#!/usr/bin/env python3
"""
🌱 Game Garden - JSON to Pansy Binary Converter
Converts extracted JSON metadata to binary Pansy (.pansy) format.

The Pansy format is documented in the Pansy repository.

Usage:
    python json-to-pansy.py --input <json_file> --output <pansy_file>
"""

import argparse
import json
import struct
import sys
import zlib
from io import BytesIO
from pathlib import Path
from typing import Dict, List, Optional


# Pansy format constants
PANSY_MAGIC = b'PANSY\x00\x00\x00'
PANSY_VERSION = 0x0100  # v1.0

# Platform IDs
PLATFORM_NES = 0x01
PLATFORM_SNES = 0x02
PLATFORM_GB = 0x03
PLATFORM_GBA = 0x04
PLATFORM_GENESIS = 0x05
PLATFORM_CUSTOM = 0xFF

# Section types
SECTION_CODE_DATA_MAP = 0x0001
SECTION_SYMBOLS = 0x0002
SECTION_COMMENTS = 0x0003
SECTION_MEMORY_REGIONS = 0x0004
SECTION_DATA_TYPES = 0x0005
SECTION_CROSS_REFS = 0x0006
SECTION_SOURCE_MAP = 0x0007
SECTION_METADATA = 0x0008

# Flags
FLAG_COMPRESSED = 0x0001

# Cross-reference types
XREF_JSR = 1
XREF_JMP = 2
XREF_BRANCH = 3
XREF_READ = 4
XREF_WRITE = 5


def parse_address(addr) -> int:
    """Parse address from string (e.g., '$008000') or int"""
    if isinstance(addr, int):
        return addr
    if isinstance(addr, str):
        addr = addr.strip()
        if addr.startswith('$'):
            return int(addr[1:], 16)
        if addr.startswith('0x') or addr.startswith('0X'):
            return int(addr, 16)
        return int(addr)
    return 0


class PansyWriter:
    """Writes binary Pansy files"""

    def __init__(self):
        self.platform = PLATFORM_SNES
        self.rom_size = 0
        self.rom_crc32 = 0
        self.project_name = ""
        self.author = ""
        self.version = ""
        self.enable_compression = False

        self.symbols: Dict[int, str] = {}
        self.comments: Dict[int, str] = {}
        self.code_offsets: set = set()
        self.data_offsets: set = set()
        self.jump_targets: set = set()
        self.sub_entry_points: set = set()
        self.memory_regions: List[tuple] = []  # (start, end, type, bank, name)
        self.cross_refs: List[tuple] = []  # (from, to, type)

    def load_from_json(self, json_path: Path) -> None:
        """Load metadata from JSON file"""
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)

        # Load symbols
        for sym in data.get('symbols', []):
            addr = sym.get('address_int', parse_address(sym.get('address', 0)))
            name = sym.get('name', '')
            if name and addr:
                self.symbols[addr] = name

                # Mark as code if it looks like a subroutine
                sym_type = sym.get('type', 'label')
                if sym_type == 'label':
                    self.code_offsets.add(addr)

        # Load comments
        for sym in data.get('symbols', []):
            addr = sym.get('address_int', parse_address(sym.get('address', 0)))
            comment = sym.get('comment', '')
            if comment and addr:
                self.comments[addr] = comment

        # Load cross-references
        for xref in data.get('cross_refs', []):
            from_addr = xref.get('from_int', parse_address(xref.get('from', 0)))
            to_addr = xref.get('to_int', parse_address(xref.get('to', 0)))
            ref_type = xref.get('type', 'jsr')

            if ref_type == 'jsr':
                xref_type = XREF_JSR
            elif ref_type == 'jmp':
                xref_type = XREF_JMP
            elif ref_type == 'branch':
                xref_type = XREF_BRANCH
            else:
                xref_type = XREF_READ

            if from_addr and to_addr:
                self.cross_refs.append((from_addr, to_addr, xref_type))
                self.jump_targets.add(to_addr)

    def _build_symbols_section(self) -> bytes:
        """Build symbols section data"""
        buf = BytesIO()
        for addr, name in sorted(self.symbols.items()):
            name_bytes = name.encode('utf-8')
            buf.write(struct.pack('<I', addr))  # 4 bytes address
            buf.write(struct.pack('<B', 0))  # 1 byte type (0 = label)
            buf.write(struct.pack('<B', 0))  # 1 byte flags
            buf.write(struct.pack('<H', len(name_bytes)))  # 2 bytes name length
            buf.write(name_bytes)
            buf.write(struct.pack('<H', 0))  # 2 bytes value length (no value)
        return buf.getvalue()

    def _build_comments_section(self) -> bytes:
        """Build comments section data"""
        buf = BytesIO()
        for addr, comment in sorted(self.comments.items()):
            comment_bytes = comment.encode('utf-8')
            buf.write(struct.pack('<I', addr))  # 4 bytes address
            buf.write(struct.pack('<B', 0))  # 1 byte type (0 = line comment)
            buf.write(struct.pack('<H', len(comment_bytes)))  # 2 bytes length
            buf.write(comment_bytes)
        return buf.getvalue()

    def _build_code_data_map(self) -> bytes:
        """Build code/data map section"""
        if not self.rom_size:
            return b''

        # Create flag array for each byte
        flags = bytearray(self.rom_size)
        FLAG_CODE = 0x01
        FLAG_DATA = 0x02
        FLAG_JUMP_TARGET = 0x04
        FLAG_SUB_ENTRY = 0x08

        for addr in self.code_offsets:
            if addr < self.rom_size:
                flags[addr] |= FLAG_CODE
        for addr in self.data_offsets:
            if addr < self.rom_size:
                flags[addr] |= FLAG_DATA
        for addr in self.jump_targets:
            if addr < self.rom_size:
                flags[addr] |= FLAG_JUMP_TARGET
        for addr in self.sub_entry_points:
            if addr < self.rom_size:
                flags[addr] |= FLAG_SUB_ENTRY

        return bytes(flags)

    def _build_cross_refs_section(self) -> bytes:
        """Build cross-references section"""
        buf = BytesIO()
        for from_addr, to_addr, ref_type in self.cross_refs:
            buf.write(struct.pack('<I', from_addr))  # 4 bytes from
            buf.write(struct.pack('<I', to_addr))  # 4 bytes to
            buf.write(struct.pack('<B', ref_type))  # 1 byte type
        return buf.getvalue()

    def _build_metadata_section(self) -> bytes:
        """Build metadata section"""
        buf = BytesIO()

        name_bytes = self.project_name.encode('utf-8')
        buf.write(struct.pack('<H', len(name_bytes)))
        buf.write(name_bytes)

        author_bytes = self.author.encode('utf-8')
        buf.write(struct.pack('<H', len(author_bytes)))
        buf.write(author_bytes)

        version_bytes = self.version.encode('utf-8')
        buf.write(struct.pack('<H', len(version_bytes)))
        buf.write(version_bytes)

        return buf.getvalue()

    def _compress_if_needed(self, data: bytes) -> tuple:
        """Compress data if enabled, return (compressed_data, uncompressed_size)"""
        if not self.enable_compression or len(data) < 100:
            return data, len(data)

        compressed = zlib.compress(data, level=9)
        if len(compressed) < len(data):
            return compressed, len(data)
        return data, len(data)

    def generate(self) -> bytes:
        """Generate the complete Pansy file"""
        # Build all sections
        sections = []

        # Symbols
        sym_data = self._build_symbols_section()
        if sym_data:
            compressed, uncompressed_size = self._compress_if_needed(sym_data)
            sections.append((SECTION_SYMBOLS, compressed, uncompressed_size))

        # Comments
        comment_data = self._build_comments_section()
        if comment_data:
            compressed, uncompressed_size = self._compress_if_needed(comment_data)
            sections.append((SECTION_COMMENTS, compressed, uncompressed_size))

        # Cross-references
        xref_data = self._build_cross_refs_section()
        if xref_data:
            compressed, uncompressed_size = self._compress_if_needed(xref_data)
            sections.append((SECTION_CROSS_REFS, compressed, uncompressed_size))

        # Metadata
        if self.project_name or self.author or self.version:
            meta_data = self._build_metadata_section()
            compressed, uncompressed_size = self._compress_if_needed(meta_data)
            sections.append((SECTION_METADATA, compressed, uncompressed_size))

        # Calculate header size
        # Magic (8) + Version (2) + Flags (2) + Platform (1) + Reserved (3) +
        # RomSize (4) + RomCRC32 (4) + SectionCount (4) + Reserved (4) = 32 bytes
        # Then section table: 16 bytes per section (type, offset, compressed_size, uncompressed_size)
        header_size = 32 + len(sections) * 16

        # Build output
        output = BytesIO()

        # Magic
        output.write(PANSY_MAGIC)

        # Version
        output.write(struct.pack('<H', PANSY_VERSION))

        # Flags
        flags = FLAG_COMPRESSED if self.enable_compression else 0
        output.write(struct.pack('<H', flags))

        # Platform
        output.write(struct.pack('<B', self.platform))

        # Reserved (3 bytes)
        output.write(b'\x00\x00\x00')

        # ROM size
        output.write(struct.pack('<I', self.rom_size))

        # ROM CRC32
        output.write(struct.pack('<I', self.rom_crc32))

        # Section count
        output.write(struct.pack('<I', len(sections)))

        # Reserved (4 bytes to align header to 32 bytes)
        output.write(b'\x00\x00\x00\x00')

        # Section table
        current_offset = header_size
        for sec_type, data, uncompressed_size in sections:
            output.write(struct.pack('<I', sec_type))
            output.write(struct.pack('<I', current_offset))
            output.write(struct.pack('<I', len(data)))
            output.write(struct.pack('<I', uncompressed_size))
            current_offset += len(data)

        # Section data
        for sec_type, data, _ in sections:
            output.write(data)

        return output.getvalue()

    def write(self, output_path: Path) -> None:
        """Write Pansy file to disk"""
        data = self.generate()
        with open(output_path, 'wb') as f:
            f.write(data)


def main():
    parser = argparse.ArgumentParser(
        description='Convert JSON metadata to binary Pansy format'
    )
    parser.add_argument(
        '--input', '-i',
        required=True,
        help='Input JSON metadata file'
    )
    parser.add_argument(
        '--output', '-o',
        required=True,
        help='Output Pansy file (.pansy)'
    )
    parser.add_argument(
        '--name',
        default='',
        help='Project name'
    )
    parser.add_argument(
        '--author',
        default='',
        help='Author name'
    )
    parser.add_argument(
        '--rom-size',
        type=int,
        default=0,
        help='ROM size in bytes'
    )
    parser.add_argument(
        '--rom-crc32',
        default='',
        help='ROM CRC32 (hex string)'
    )
    parser.add_argument(
        '--compress',
        action='store_true',
        help='Enable DEFLATE compression'
    )
    parser.add_argument(
        '--platform',
        default='snes',
        choices=['nes', 'snes', 'gb', 'gba', 'genesis'],
        help='Target platform (default: snes)'
    )

    args = parser.parse_args()

    input_path = Path(args.input)
    output_path = Path(args.output)

    if not input_path.exists():
        print(f"Error: Input file not found: {input_path}")
        sys.exit(1)

    print(f"🌼 JSON to Pansy Converter")
    print(f"  Input:  {input_path}")
    print(f"  Output: {output_path}")
    print()

    writer = PansyWriter()
    writer.project_name = args.name or input_path.stem
    writer.author = args.author
    writer.rom_size = args.rom_size
    writer.enable_compression = args.compress

    # Set platform
    platform_map = {
        'nes': PLATFORM_NES,
        'snes': PLATFORM_SNES,
        'gb': PLATFORM_GB,
        'gba': PLATFORM_GBA,
        'genesis': PLATFORM_GENESIS,
    }
    writer.platform = platform_map.get(args.platform.lower(), PLATFORM_SNES)

    if args.rom_crc32:
        crc = args.rom_crc32.strip()
        if crc.startswith('0x') or crc.startswith('0X'):
            writer.rom_crc32 = int(crc, 16)
        else:
            writer.rom_crc32 = int(crc, 16)

    print("Loading JSON metadata...")
    writer.load_from_json(input_path)

    print(f"  Symbols:     {len(writer.symbols)}")
    print(f"  Comments:    {len(writer.comments)}")
    print(f"  Cross-refs:  {len(writer.cross_refs)}")
    print()

    print("Generating Pansy file...")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    writer.write(output_path)

    size = output_path.stat().st_size
    print(f"  Written: {output_path} ({size:,} bytes)")
    print()
    print("✅ Conversion complete!")


if __name__ == '__main__':
    main()
