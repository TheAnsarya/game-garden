#!/usr/bin/env python3
"""
🌱 Game Garden - Asset Pipeline
Complete asset extraction, conversion, and build pipeline for game projects.

Supports:
- Graphics extraction (tiles, sprites, palettes)
- Text extraction with TBL table support
- Data table extraction to JSON
- Build verification (CRC32, MD5, SHA256)
"""

import argparse
import hashlib
import json
import os
import struct
import sys
from dataclasses import dataclass, field
from enum import Enum
from pathlib import Path
from typing import Dict, List, Optional, Tuple

try:
	from PIL import Image
	HAS_PIL = True
except ImportError:
	HAS_PIL = False


class Platform(Enum):
	"""Supported gaming platforms"""
	NES = "nes"
	SNES = "snes"
	GB = "gb"
	GBA = "gba"
	GENESIS = "genesis"


@dataclass
class RomInfo:
	"""ROM file information"""
	path: Path
	size: int
	crc32: str
	md5: str
	sha256: str
	platform: Platform
	has_header: bool = False
	header_size: int = 0


@dataclass
class ExtractionConfig:
	"""Configuration for asset extraction"""
	rom_path: Path
	output_dir: Path
	platform: Platform
	regions: List[Dict] = field(default_factory=list)
	palettes: List[Dict] = field(default_factory=list)


class Pipeline:
	"""Main asset pipeline class"""
	
	def __init__(self, config_path: Optional[Path] = None):
		self.config: Optional[Dict] = None
		self.rom_info: Optional[RomInfo] = None
		self.rom_data: Optional[bytes] = None
		
		if config_path:
			self.load_config(config_path)
	
	def load_config(self, path: Path) -> Dict:
		"""Load pipeline configuration from JSON"""
		with open(path, 'r', encoding='utf-8') as f:
			self.config = json.load(f)
		return self.config
	
	def load_rom(self, rom_path: Path) -> RomInfo:
		"""Load ROM and calculate checksums"""
		rom_path = Path(rom_path)
		
		with open(rom_path, 'rb') as f:
			self.rom_data = f.read()
		
		# Calculate checksums
		crc32 = format(self._crc32(self.rom_data), '08x')
		md5 = hashlib.md5(self.rom_data).hexdigest()
		sha256 = hashlib.sha256(self.rom_data).hexdigest()
		
		# Detect platform and header
		platform, has_header, header_size = self._detect_platform(self.rom_data)
		
		self.rom_info = RomInfo(
			path=rom_path,
			size=len(self.rom_data),
			crc32=crc32,
			md5=md5,
			sha256=sha256,
			platform=platform,
			has_header=has_header,
			header_size=header_size
		)
		
		return self.rom_info
	
	def _crc32(self, data: bytes) -> int:
		"""Calculate CRC32 checksum"""
		crc = 0xffffffff
		for byte in data:
			crc ^= byte
			for _ in range(8):
				if crc & 1:
					crc = (crc >> 1) ^ 0xedb88320
				else:
					crc >>= 1
		return crc ^ 0xffffffff
	
	def _detect_platform(self, data: bytes) -> Tuple[Platform, bool, int]:
		"""Detect ROM platform and header presence"""
		size = len(data)
		
		# NES: Check for iNES header
		if data[:4] == b'NES\x1a':
			return Platform.NES, True, 16
		
		# SNES: Check size for SMC header (512 bytes)
		if size % 1024 == 512:
			# Has SMC header
			return Platform.SNES, True, 512
		elif size % 1024 == 0 and size >= 0x8000:
			# Check for SNES internal header
			# LoROM: $7FC0, HiROM: $FFC0
			if size > 0x7FD5:
				map_mode = data[0x7FD5]
				if map_mode in (0x20, 0x21, 0x30, 0x31):
					return Platform.SNES, False, 0
		
		# Game Boy: Check for Nintendo logo
		if size >= 0x134 and data[0x104:0x134] == bytes([
			0xCE, 0xED, 0x66, 0x66, 0xCC, 0x0D, 0x00, 0x0B,
			0x03, 0x73, 0x00, 0x83, 0x00, 0x0C, 0x00, 0x0D,
			0x00, 0x08, 0x11, 0x1F, 0x88, 0x89, 0x00, 0x0E,
			0xDC, 0xCC, 0x6E, 0xE6, 0xDD, 0xDD, 0xD9, 0x99,
			0xBB, 0xBB, 0x67, 0x63, 0x6E, 0x0E, 0xEC, 0xCC,
			0xDD, 0xDC, 0x99, 0x9F, 0xBB, 0xB9, 0x33, 0x3E
		]):
			return Platform.GB, False, 0
		
		# Default to SNES without header
		return Platform.SNES, False, 0
	
	def get_rom_offset(self, offset: int) -> int:
		"""Get actual ROM offset accounting for header"""
		if self.rom_info and self.rom_info.has_header:
			return offset + self.rom_info.header_size
		return offset
	
	def extract_bytes(self, offset: int, size: int) -> bytes:
		"""Extract bytes from ROM at offset"""
		if not self.rom_data:
			raise ValueError("ROM not loaded")
		
		actual_offset = self.get_rom_offset(offset)
		return self.rom_data[actual_offset:actual_offset + size]
	
	# ==================== Graphics Extraction ====================
	
	def extract_tiles_2bpp(self, offset: int, count: int) -> List[List[List[int]]]:
		"""Extract 2BPP tiles (NES, GB)"""
		tiles = []
		data = self.extract_bytes(offset, count * 16)
		
		for i in range(count):
			tile = [[0] * 8 for _ in range(8)]
			base = i * 16
			
			for row in range(8):
				plane0 = data[base + row]
				plane1 = data[base + row + 8]
				
				for col in range(8):
					bit0 = (plane0 >> (7 - col)) & 1
					bit1 = (plane1 >> (7 - col)) & 1
					tile[row][col] = bit0 | (bit1 << 1)
			
			tiles.append(tile)
		
		return tiles
	
	def extract_tiles_4bpp(self, offset: int, count: int) -> List[List[List[int]]]:
		"""Extract 4BPP tiles (SNES)"""
		tiles = []
		data = self.extract_bytes(offset, count * 32)
		
		for i in range(count):
			tile = [[0] * 8 for _ in range(8)]
			base = i * 32
			
			for row in range(8):
				plane0 = data[base + row * 2]
				plane1 = data[base + row * 2 + 1]
				plane2 = data[base + 16 + row * 2]
				plane3 = data[base + 16 + row * 2 + 1]
				
				for col in range(8):
					shift = 7 - col
					bit0 = (plane0 >> shift) & 1
					bit1 = (plane1 >> shift) & 1
					bit2 = (plane2 >> shift) & 1
					bit3 = (plane3 >> shift) & 1
					tile[row][col] = bit0 | (bit1 << 1) | (bit2 << 2) | (bit3 << 3)
			
			tiles.append(tile)
		
		return tiles
	
	def tiles_to_image(
		self,
		tiles: List[List[List[int]]],
		palette: Optional[List[Tuple[int, int, int]]] = None,
		tiles_per_row: int = 16
	) -> Optional['Image.Image']:
		"""Convert tiles to PIL Image"""
		if not HAS_PIL:
			return None
		
		if not tiles:
			return None
		
		# Generate default grayscale palette if not provided
		if palette is None:
			max_val = max(max(max(row) for row in tile) for tile in tiles)
			palette = [(i * 255 // max(max_val, 1),) * 3 for i in range(max_val + 1)]
		
		num_tiles = len(tiles)
		rows = (num_tiles + tiles_per_row - 1) // tiles_per_row
		cols = min(num_tiles, tiles_per_row)
		
		width = cols * 8
		height = rows * 8
		
		image = Image.new('RGB', (width, height), (0, 0, 0))
		pixels = image.load()
		
		for idx, tile in enumerate(tiles):
			tile_row = idx // tiles_per_row
			tile_col = idx % tiles_per_row
			
			for y, row in enumerate(tile):
				for x, pixel in enumerate(row):
					px = tile_col * 8 + x
					py = tile_row * 8 + y
					if px < width and py < height:
						color = palette[pixel] if pixel < len(palette) else (255, 0, 255)
						pixels[px, py] = color
		
		return image
	
	def extract_snes_palette(self, offset: int, count: int = 16) -> List[Tuple[int, int, int]]:
		"""Extract SNES RGB555 palette"""
		data = self.extract_bytes(offset, count * 2)
		palette = []
		
		for i in range(count):
			word = struct.unpack('<H', data[i*2:i*2+2])[0]
			r = (word & 0x1f) << 3
			g = ((word >> 5) & 0x1f) << 3
			b = ((word >> 10) & 0x1f) << 3
			palette.append((r, g, b))
		
		return palette
	
	# ==================== Verification ====================
	
	def verify_checksums(self, expected: Dict[str, str]) -> Dict[str, bool]:
		"""Verify ROM checksums against expected values"""
		if not self.rom_info:
			raise ValueError("ROM not loaded")
		
		results = {}
		
		if 'crc32' in expected:
			results['crc32'] = self.rom_info.crc32.lower() == expected['crc32'].lower()
		if 'md5' in expected:
			results['md5'] = self.rom_info.md5.lower() == expected['md5'].lower()
		if 'sha256' in expected:
			results['sha256'] = self.rom_info.sha256.lower() == expected['sha256'].lower()
		
		return results
	
	# ==================== Pipeline Commands ====================
	
	def _parse_offset(self, value) -> int:
		"""Parse offset value (int or hex string)"""
		if isinstance(value, int):
			return value
		if isinstance(value, str):
			# Handle "0x..." or "$..." hex formats
			if value.startswith('0x') or value.startswith('0X'):
				return int(value, 16)
			elif value.startswith('$'):
				return int(value[1:], 16)
			else:
				return int(value)
		return 0
	
	def run_extraction(self, config: ExtractionConfig) -> Dict:
		"""Run full extraction based on config"""
		results = {
			'graphics': [],
			'palettes': [],
			'errors': []
		}
		
		# Load ROM
		self.load_rom(config.rom_path)
		
		# Create output directories
		graphics_dir = config.output_dir / 'graphics'
		palettes_dir = config.output_dir / 'palettes'
		graphics_dir.mkdir(parents=True, exist_ok=True)
		palettes_dir.mkdir(parents=True, exist_ok=True)
		
		# Extract graphics regions
		for region in config.regions:
			try:
				offset = self._parse_offset(region.get('offset', 0))
				count = region.get('tiles', 256)
				bpp = region.get('bpp', 4)
				name = region.get('name', f'graphics_{offset:06x}')
				
				if bpp == 2:
					tiles = self.extract_tiles_2bpp(offset, count)
				elif bpp == 4:
					tiles = self.extract_tiles_4bpp(offset, count)
				else:
					results['errors'].append(f"Unsupported BPP: {bpp}")
					continue
				
				# Convert to image
				image = self.tiles_to_image(tiles)
				if image:
					output_path = graphics_dir / f'{name}.png'
					image.save(output_path)
					results['graphics'].append({
						'name': name,
						'path': str(output_path),
						'tiles': count,
						'bpp': bpp
					})
				
			except Exception as e:
				results['errors'].append(f"Error extracting {name}: {e}")
		
		return results


def main():
	parser = argparse.ArgumentParser(description='Game Garden Asset Pipeline')
	subparsers = parser.add_subparsers(dest='command', help='Commands')
	
	# Info command
	info_parser = subparsers.add_parser('info', help='Show ROM information')
	info_parser.add_argument('rom', help='ROM file path')
	
	# Verify command
	verify_parser = subparsers.add_parser('verify', help='Verify ROM checksums')
	verify_parser.add_argument('rom', help='ROM file path')
	verify_parser.add_argument('--checksums', help='Checksums JSON file')
	verify_parser.add_argument('--crc32', help='Expected CRC32')
	verify_parser.add_argument('--md5', help='Expected MD5')
	
	# Extract command
	extract_parser = subparsers.add_parser('extract', help='Extract assets from ROM')
	extract_parser.add_argument('rom', help='ROM file path')
	extract_parser.add_argument('--config', help='Extraction config JSON')
	extract_parser.add_argument('--output', '-o', default='./extracted', help='Output directory')
	
	args = parser.parse_args()
	
	if not args.command:
		parser.print_help()
		return
	
	pipeline = Pipeline()
	
	if args.command == 'info':
		info = pipeline.load_rom(Path(args.rom))
		print(f"ROM: {info.path.name}")
		print(f"Size: {info.size:,} bytes")
		print(f"Platform: {info.platform.value}")
		print(f"Has Header: {info.has_header}")
		print(f"CRC32: {info.crc32}")
		print(f"MD5: {info.md5}")
		print(f"SHA256: {info.sha256}")
	
	elif args.command == 'verify':
		pipeline.load_rom(Path(args.rom))
		
		expected = {}
		if args.checksums:
			with open(args.checksums, 'r') as f:
				expected = json.load(f)
		if args.crc32:
			expected['crc32'] = args.crc32
		if args.md5:
			expected['md5'] = args.md5
		
		results = pipeline.verify_checksums(expected)
		
		all_pass = True
		for check, passed in results.items():
			status = "✅ PASS" if passed else "❌ FAIL"
			print(f"{check}: {status}")
			if not passed:
				all_pass = False
		
		sys.exit(0 if all_pass else 1)
	
	elif args.command == 'extract':
		config = ExtractionConfig(
			rom_path=Path(args.rom),
			output_dir=Path(args.output),
			platform=Platform.SNES,
			regions=[]
		)
		
		if args.config:
			with open(args.config, 'r') as f:
				cfg = json.load(f)
				config.regions = cfg.get('graphics', [])
				config.palettes = cfg.get('palettes', [])
		
		results = pipeline.run_extraction(config)
		
		print(f"Extracted {len(results['graphics'])} graphics regions")
		if results['errors']:
			print(f"Errors: {len(results['errors'])}")
			for err in results['errors']:
				print(f"  - {err}")


if __name__ == '__main__':
	main()
