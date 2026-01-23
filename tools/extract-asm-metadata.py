#!/usr/bin/env python3
"""
🌱 Game Garden - ASM to Pansy Metadata Extractor
Extracts symbols, comments, and cross-references from ASM files to Pansy format.

This tool READS from ffmq-info but NEVER modifies it.
All extracted metadata is written to game-garden's metadata directory.

Usage:
    python extract-asm-metadata.py --input <asm_dir> --output <metadata_dir>
"""

import argparse
import json
import os
import re
import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List, Optional, Tuple


@dataclass
class Symbol:
    """Represents a label/symbol from ASM"""
    name: str
    address: int
    bank: int = 0
    symbol_type: str = "label"  # label, constant, data
    comment: str = ""
    source_file: str = ""
    source_line: int = 0


@dataclass
class Comment:
    """Represents a comment block from ASM"""
    address: int
    text: str
    is_block: bool = False  # Multi-line block comment
    source_file: str = ""
    source_line: int = 0


@dataclass
class CrossReference:
    """Represents a cross-reference (jsr, jsl, jmp, etc.)"""
    from_address: int
    to_address: int
    ref_type: str  # jsr, jsl, jmp, jml, branch
    source_file: str = ""
    source_line: int = 0


@dataclass
class ExtractedMetadata:
    """All metadata extracted from ASM files"""
    symbols: List[Symbol] = field(default_factory=list)
    comments: List[Comment] = field(default_factory=list)
    cross_refs: List[CrossReference] = field(default_factory=list)
    constants: Dict[str, int] = field(default_factory=dict)
    source_files: List[str] = field(default_factory=list)


class AsmMetadataExtractor:
    """Extracts metadata from ASM/ASAR-style assembly files"""

    # Pattern for labels: name followed by colon (optional whitespace)
    LABEL_PATTERN = re.compile(r'^([A-Za-z_][A-Za-z0-9_]*)\s*:', re.MULTILINE)

    # Pattern for constants: name = value
    CONST_PATTERN = re.compile(r'^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*\$?([0-9A-Fa-f]+)', re.MULTILINE)

    # Pattern for org directive
    ORG_PATTERN = re.compile(r'^\s*(?:\.)?org\s+\$([0-9A-Fa-f]+)', re.MULTILINE | re.IGNORECASE)

    # Pattern for JSR/JSL/JMP/JML instructions
    CALL_PATTERN = re.compile(
        r'^\s*(jsr|jsl|jmp|jml|bra|beq|bne|bpl|bmi|bcs|bcc|bvs|bvc)(?:\.w|\.l)?\s+'
        r'(?:\$([0-9A-Fa-f]+)|([A-Za-z_][A-Za-z0-9_]*))',
        re.MULTILINE | re.IGNORECASE
    )

    # Pattern for comment blocks (multi-line ; comments or === blocks)
    BLOCK_COMMENT_PATTERN = re.compile(
        r'^; [=]{50,}.*?\n((?:;.*\n)+); [=]{50,}',
        re.MULTILINE
    )

    def __init__(self):
        self.metadata = ExtractedMetadata()
        self.current_org = 0
        self.current_bank = 0
        self.current_file = ""

    def extract_from_file(self, filepath: Path) -> None:
        """Extract metadata from a single ASM file"""
        self.current_file = filepath.name
        self.metadata.source_files.append(str(filepath))

        with open(filepath, 'r', encoding='utf-8', errors='replace') as f:
            content = f.read()
            lines = content.split('\n')

        # Extract constants first (they may be referenced by labels)
        self._extract_constants(content)

        # Process line by line for context-aware extraction
        self.current_org = 0
        line_offset = 0  # Estimated byte offset from org

        for line_num, line in enumerate(lines, 1):
            # Check for org directive
            org_match = self.ORG_PATTERN.match(line)
            if org_match:
                self.current_org = int(org_match.group(1), 16)
                # Determine bank from address (SNES LoROM)
                if self.current_org >= 0x808000:
                    self.current_bank = (self.current_org >> 16) & 0x7F
                elif self.current_org >= 0x8000:
                    self.current_bank = 0
                line_offset = 0
                continue

            # Check for label
            label_match = self.LABEL_PATTERN.match(line)
            if label_match:
                label_name = label_match.group(1)
                # Get comment on same line if present
                comment = ""
                comment_pos = line.find(';')
                if comment_pos > 0:
                    comment = line[comment_pos + 1:].strip()

                # Also collect block comment above if present
                block_comment = self._get_block_comment_above(lines, line_num - 1)
                if block_comment:
                    comment = block_comment + ("\n" + comment if comment else "")

                symbol = Symbol(
                    name=label_name,
                    address=self.current_org + line_offset,
                    bank=self.current_bank,
                    comment=comment,
                    source_file=self.current_file,
                    source_line=line_num
                )
                self.metadata.symbols.append(symbol)

            # Check for call/jump instructions
            call_match = self.CALL_PATTERN.match(line)
            if call_match:
                instr = call_match.group(1).lower()
                target_addr = call_match.group(2)
                target_label = call_match.group(3)

                # Determine reference type
                if instr in ('jsr', 'jsl'):
                    ref_type = 'jsr'
                elif instr in ('jmp', 'jml'):
                    ref_type = 'jmp'
                else:
                    ref_type = 'branch'

                # Resolve target address
                to_addr = 0
                if target_addr:
                    to_addr = int(target_addr, 16)
                elif target_label and target_label in self.metadata.constants:
                    to_addr = self.metadata.constants[target_label]

                if to_addr:
                    xref = CrossReference(
                        from_address=self.current_org + line_offset,
                        to_address=to_addr,
                        ref_type=ref_type,
                        source_file=self.current_file,
                        source_line=line_num
                    )
                    self.metadata.cross_refs.append(xref)

            # Estimate instruction size for offset tracking
            # This is a rough estimate - real parsing would need full disassembly
            stripped = line.strip()
            if stripped and not stripped.startswith(';') and not stripped.startswith('.'):
                if label_match:
                    stripped = stripped[label_match.end():].strip()
                if stripped:
                    # Rough instruction size estimate
                    line_offset += self._estimate_instruction_size(stripped)

    def _extract_constants(self, content: str) -> None:
        """Extract constant definitions"""
        for match in self.CONST_PATTERN.finditer(content):
            name = match.group(1)
            value = int(match.group(2), 16)
            self.metadata.constants[name] = value

            # Also add as symbol
            symbol = Symbol(
                name=name,
                address=value,
                symbol_type="constant",
                source_file=self.current_file
            )
            self.metadata.symbols.append(symbol)

    def _get_block_comment_above(self, lines: List[str], end_line: int) -> str:
        """Get block comment immediately above a line"""
        comments = []
        i = end_line - 1  # 0-indexed

        while i >= 0:
            line = lines[i].strip()
            if line.startswith(';'):
                # Skip divider lines
                if not re.match(r'^; [=\-]{20,}$', line):
                    comment_text = line[1:].strip()
                    if comment_text:
                        comments.insert(0, comment_text)
                i -= 1
            elif not line:
                # Empty line - stop if we have comments, continue if not
                if comments:
                    break
                i -= 1
            else:
                break

        return '\n'.join(comments) if comments else ""

    def _estimate_instruction_size(self, line: str) -> int:
        """Rough estimate of instruction byte size"""
        # Very rough heuristic - real implementation would parse opcodes
        if any(x in line.lower() for x in ['.db', '.byte', 'db ']):
            # Count bytes in data directive
            return line.count(',') + 1
        elif any(x in line.lower() for x in ['.dw', '.word', 'dw ']):
            return (line.count(',') + 1) * 2
        elif any(x in line.lower() for x in ['.dl', '.long', 'dl ']):
            return (line.count(',') + 1) * 3
        elif '.l' in line.lower() or 'jsl' in line.lower() or 'jml' in line.lower():
            return 4
        elif '.w' in line.lower():
            return 3
        else:
            return 2  # Default assumption

    def extract_from_directory(self, dirpath: Path, pattern: str = "*.asm") -> None:
        """Extract metadata from all ASM files in directory"""
        for filepath in sorted(dirpath.glob(pattern)):
            print(f"  Extracting: {filepath.name}")
            self.extract_from_file(filepath)

    def to_json(self) -> Dict:
        """Convert extracted metadata to JSON-serializable dict"""
        return {
            "source_files": self.metadata.source_files,
            "symbols": [
                {
                    "name": s.name,
                    "address": f"${s.address:06x}",
                    "address_int": s.address,
                    "bank": s.bank,
                    "type": s.symbol_type,
                    "comment": s.comment,
                    "source_file": s.source_file,
                    "source_line": s.source_line
                }
                for s in self.metadata.symbols
            ],
            "comments": [
                {
                    "address": f"${c.address:06x}",
                    "address_int": c.address,
                    "text": c.text,
                    "is_block": c.is_block,
                    "source_file": c.source_file,
                    "source_line": c.source_line
                }
                for c in self.metadata.comments
            ],
            "cross_refs": [
                {
                    "from": f"${x.from_address:06x}",
                    "to": f"${x.to_address:06x}",
                    "from_int": x.from_address,
                    "to_int": x.to_address,
                    "type": x.ref_type,
                    "source_file": x.source_file,
                    "source_line": x.source_line
                }
                for x in self.metadata.cross_refs
            ],
            "constants": {
                name: f"${value:06x}"
                for name, value in self.metadata.constants.items()
            },
            "statistics": {
                "total_symbols": len(self.metadata.symbols),
                "total_comments": len(self.metadata.comments),
                "total_cross_refs": len(self.metadata.cross_refs),
                "total_constants": len(self.metadata.constants),
                "source_files": len(self.metadata.source_files)
            }
        }

    def write_pansy_json(self, output_path: Path) -> None:
        """Write metadata as JSON (intermediate format before binary Pansy)"""
        data = self.to_json()
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent='\t')
        print(f"  Written: {output_path}")

    def write_symbols_txt(self, output_path: Path) -> None:
        """Write symbols in simple text format (address=name)"""
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write("; Symbols extracted from ffmq-info\n")
            f.write("; Format: address=name\n\n")

            # Sort by address
            symbols = sorted(self.metadata.symbols, key=lambda s: s.address)
            for s in symbols:
                if s.symbol_type == "label":
                    f.write(f"${s.address:06x}={s.name}\n")

        print(f"  Written: {output_path}")

    def write_comments_txt(self, output_path: Path) -> None:
        """Write comments with full text preserved"""
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write("; Comments extracted from ffmq-info\n")
            f.write("; This preserves all the research and documentation\n\n")

            # Sort by address
            symbols = sorted(
                [s for s in self.metadata.symbols if s.comment],
                key=lambda s: s.address
            )
            for s in symbols:
                f.write(f"; === ${s.address:06x} - {s.name} ===\n")
                for line in s.comment.split('\n'):
                    f.write(f"; {line}\n")
                f.write("\n")

        print(f"  Written: {output_path}")


def main():
    parser = argparse.ArgumentParser(
        description='Extract metadata from ASM files to Pansy format'
    )
    parser.add_argument(
        '--input', '-i',
        required=True,
        help='Input directory containing ASM files'
    )
    parser.add_argument(
        '--output', '-o',
        required=True,
        help='Output directory for metadata files'
    )
    parser.add_argument(
        '--pattern',
        default='*.asm',
        help='File pattern to match (default: *.asm)'
    )

    args = parser.parse_args()

    input_dir = Path(args.input)
    output_dir = Path(args.output)

    if not input_dir.exists():
        print(f"Error: Input directory not found: {input_dir}")
        sys.exit(1)

    output_dir.mkdir(parents=True, exist_ok=True)

    print(f"🌱 ASM to Pansy Metadata Extractor")
    print(f"  Input:  {input_dir}")
    print(f"  Output: {output_dir}")
    print()

    extractor = AsmMetadataExtractor()
    extractor.extract_from_directory(input_dir, args.pattern)

    print()
    print("Writing metadata files...")

    # Write JSON metadata
    extractor.write_pansy_json(output_dir / 'ffmq_metadata.json')

    # Write simple symbol list
    extractor.write_symbols_txt(output_dir / 'ffmq_symbols.txt')

    # Write preserved comments
    extractor.write_comments_txt(output_dir / 'ffmq_comments.txt')

    # Print statistics
    stats = extractor.to_json()['statistics']
    print()
    print("📊 Extraction Statistics:")
    print(f"  Source files: {stats['source_files']}")
    print(f"  Symbols:      {stats['total_symbols']}")
    print(f"  Constants:    {stats['total_constants']}")
    print(f"  Cross-refs:   {stats['total_cross_refs']}")
    print()
    print("✅ Extraction complete!")
    print("   Original ffmq-info source files are UNCHANGED.")


if __name__ == '__main__':
    main()
