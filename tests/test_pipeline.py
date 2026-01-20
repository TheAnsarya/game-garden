#!/usr/bin/env python3
"""
🌱 Game Garden - Test Suite
Automated tests for the asset pipeline and extraction tools.

Run with: python -m pytest tests/ -v
Or: python tests/test_pipeline.py
"""

import hashlib
import json
import os
import struct
import sys
import tempfile
import unittest
from pathlib import Path

# Add parent directory to path for imports
sys.path.insert(0, str(Path(__file__).parent.parent / 'tools'))

from pipeline import Pipeline, Platform, RomInfo, ExtractionConfig


class TestChecksums(unittest.TestCase):
	"""Test checksum calculation"""
	
	def test_crc32_empty(self):
		"""CRC32 of empty data"""
		pipeline = Pipeline()
		self.assertEqual(pipeline._crc32(b''), 0x00000000)
	
	def test_crc32_known_value(self):
		"""CRC32 of known test string"""
		pipeline = Pipeline()
		# "123456789" has CRC32 = 0xCBF43926
		result = pipeline._crc32(b'123456789')
		self.assertEqual(result, 0xCBF43926)
	
	def test_md5_known_value(self):
		"""MD5 of known test string"""
		result = hashlib.md5(b'test').hexdigest()
		self.assertEqual(result, '098f6bcd4621d373cade4e832627b4f6')


class TestPlatformDetection(unittest.TestCase):
	"""Test ROM platform detection"""
	
	def setUp(self):
		self.pipeline = Pipeline()
	
	def test_detect_nes(self):
		"""Detect NES iNES format"""
		# iNES header: "NES\x1a" followed by PRG/CHR counts
		data = b'NES\x1a\x02\x01\x00\x00' + b'\x00' * 8 + b'\x00' * 0x8000
		platform, has_header, header_size = self.pipeline._detect_platform(data)
		self.assertEqual(platform, Platform.NES)
		self.assertTrue(has_header)
		self.assertEqual(header_size, 16)
	
	def test_detect_snes_with_header(self):
		"""Detect SNES with SMC header (512 bytes)"""
		# ROM size that's 512 mod 1024
		data = b'\x00' * (0x8000 + 512)  # 32KB + 512 byte header
		platform, has_header, header_size = self.pipeline._detect_platform(data)
		self.assertEqual(platform, Platform.SNES)
		self.assertTrue(has_header)
		self.assertEqual(header_size, 512)
	
	def test_detect_snes_no_header(self):
		"""Detect SNES without header"""
		# Create minimal SNES ROM with LoROM mapping
		data = bytearray(0x8000)  # 32KB
		data[0x7FD5] = 0x20  # LoROM map mode
		platform, has_header, header_size = self.pipeline._detect_platform(bytes(data))
		self.assertEqual(platform, Platform.SNES)
		self.assertFalse(has_header)


class TestTileExtraction(unittest.TestCase):
	"""Test tile extraction functions"""
	
	def setUp(self):
		self.pipeline = Pipeline()
		# Create a minimal test ROM
		self.test_rom = bytearray(0x10000)  # 64KB
		self.test_rom[0x7FD5] = 0x20  # LoROM
		self.pipeline.rom_data = bytes(self.test_rom)
		self.pipeline.rom_info = RomInfo(
			path=Path('test.sfc'),
			size=len(self.test_rom),
			crc32='00000000',
			md5='00000000000000000000000000000000',
			sha256='0' * 64,
			platform=Platform.SNES,
			has_header=False,
			header_size=0
		)
	
	def test_extract_2bpp_tile(self):
		"""Extract a single 2BPP tile"""
		# Create a simple checkerboard pattern
		# 2BPP: 16 bytes per tile (8 rows × 2 planes)
		tile_data = bytearray(16)
		# Plane 0: alternating bits
		for i in range(8):
			tile_data[i] = 0xAA if i % 2 == 0 else 0x55
		# Plane 1: solid
		for i in range(8, 16):
			tile_data[i] = 0xFF
		
		# Insert tile data at offset 0x1000
		self.test_rom[0x1000:0x1010] = tile_data
		self.pipeline.rom_data = bytes(self.test_rom)
		
		tiles = self.pipeline.extract_tiles_2bpp(0x1000, 1)
		
		self.assertEqual(len(tiles), 1)
		self.assertEqual(len(tiles[0]), 8)  # 8 rows
		self.assertEqual(len(tiles[0][0]), 8)  # 8 columns
	
	def test_extract_4bpp_tile(self):
		"""Extract a single 4BPP tile"""
		# 4BPP: 32 bytes per tile
		tile_data = bytearray(32)
		# Fill with pattern
		for i in range(32):
			tile_data[i] = i & 0xFF
		
		self.test_rom[0x2000:0x2020] = tile_data
		self.pipeline.rom_data = bytes(self.test_rom)
		
		tiles = self.pipeline.extract_tiles_4bpp(0x2000, 1)
		
		self.assertEqual(len(tiles), 1)
		self.assertEqual(len(tiles[0]), 8)
		self.assertEqual(len(tiles[0][0]), 8)
		# 4BPP tiles have values 0-15
		for row in tiles[0]:
			for pixel in row:
				self.assertGreaterEqual(pixel, 0)
				self.assertLessEqual(pixel, 15)
	
	def test_extract_multiple_tiles(self):
		"""Extract multiple tiles"""
		# Create 4 tiles worth of 4BPP data (128 bytes)
		tile_data = bytearray(128)
		for i in range(128):
			tile_data[i] = i & 0xFF
		
		self.test_rom[0x3000:0x3080] = tile_data
		self.pipeline.rom_data = bytes(self.test_rom)
		
		tiles = self.pipeline.extract_tiles_4bpp(0x3000, 4)
		
		self.assertEqual(len(tiles), 4)


class TestPaletteExtraction(unittest.TestCase):
	"""Test SNES palette extraction"""
	
	def setUp(self):
		self.pipeline = Pipeline()
		self.test_rom = bytearray(0x10000)
		self.test_rom[0x7FD5] = 0x20
		self.pipeline.rom_data = bytes(self.test_rom)
		self.pipeline.rom_info = RomInfo(
			path=Path('test.sfc'),
			size=len(self.test_rom),
			crc32='00000000',
			md5='00000000000000000000000000000000',
			sha256='0' * 64,
			platform=Platform.SNES,
			has_header=False,
			header_size=0
		)
	
	def test_extract_snes_palette(self):
		"""Extract SNES RGB555 palette"""
		# SNES palette: 2 bytes per color, RGB555 format
		# Color 0: Black (0x0000)
		# Color 1: Red (0x001F = r=31, g=0, b=0)
		# Color 2: Green (0x03E0 = r=0, g=31, b=0)
		# Color 3: Blue (0x7C00 = r=0, g=0, b=31)
		palette_data = struct.pack('<HHHH', 0x0000, 0x001F, 0x03E0, 0x7C00)
		
		self.test_rom[0x4000:0x4008] = palette_data
		self.pipeline.rom_data = bytes(self.test_rom)
		
		palette = self.pipeline.extract_snes_palette(0x4000, 4)
		
		self.assertEqual(len(palette), 4)
		self.assertEqual(palette[0], (0, 0, 0))  # Black
		self.assertEqual(palette[1], (248, 0, 0))  # Red (31 << 3)
		self.assertEqual(palette[2], (0, 248, 0))  # Green
		self.assertEqual(palette[3], (0, 0, 248))  # Blue


class TestVerification(unittest.TestCase):
	"""Test ROM verification"""
	
	def setUp(self):
		self.pipeline = Pipeline()
	
	def test_verify_checksums_pass(self):
		"""Verify matching checksums"""
		# Create test ROM
		test_data = b'Test ROM data for checksum verification'
		
		with tempfile.NamedTemporaryFile(suffix='.sfc', delete=False) as f:
			# Add padding to make it look like SNES ROM
			padded = test_data + b'\x00' * (0x8000 - len(test_data))
			# Set LoROM mode at $7FD5
			padded_list = list(padded)
			padded_list[0x7FD5] = 0x20
			f.write(bytes(padded_list))
			temp_path = f.name
		
		try:
			info = self.pipeline.load_rom(Path(temp_path))
			
			# Verify with correct checksums
			results = self.pipeline.verify_checksums({
				'crc32': info.crc32,
				'md5': info.md5
			})
			
			self.assertTrue(results['crc32'])
			self.assertTrue(results['md5'])
		finally:
			os.unlink(temp_path)
	
	def test_verify_checksums_fail(self):
		"""Verify mismatched checksums"""
		test_data = b'Test ROM' + b'\x00' * (0x8000 - 8)
		
		with tempfile.NamedTemporaryFile(suffix='.sfc', delete=False) as f:
			data_list = list(test_data)
			data_list[0x7FD5] = 0x20
			f.write(bytes(data_list))
			temp_path = f.name
		
		try:
			self.pipeline.load_rom(Path(temp_path))
			
			results = self.pipeline.verify_checksums({
				'crc32': 'deadbeef',
				'md5': '00000000000000000000000000000000'
			})
			
			self.assertFalse(results['crc32'])
			self.assertFalse(results['md5'])
		finally:
			os.unlink(temp_path)


class TestImageConversion(unittest.TestCase):
	"""Test tile to image conversion"""
	
	def setUp(self):
		self.pipeline = Pipeline()
	
	def test_tiles_to_image_basic(self):
		"""Convert tiles to image"""
		# Skip if PIL not available
		try:
			from PIL import Image
		except ImportError:
			self.skipTest("PIL not available")
		
		# Create simple 2x2 tile grid (4 tiles)
		tiles = []
		for i in range(4):
			# Each tile is 8x8 with value i
			tile = [[i] * 8 for _ in range(8)]
			tiles.append(tile)
		
		image = self.pipeline.tiles_to_image(tiles, tiles_per_row=2)
		
		self.assertIsNotNone(image)
		self.assertEqual(image.size, (16, 16))  # 2x2 tiles × 8 pixels
	
	def test_tiles_to_image_custom_palette(self):
		"""Convert tiles with custom palette"""
		try:
			from PIL import Image
		except ImportError:
			self.skipTest("PIL not available")
		
		tiles = [[[0] * 8 for _ in range(8)]]  # Single black tile
		palette = [(255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 255, 255)]
		
		image = self.pipeline.tiles_to_image(tiles, palette=palette)
		
		self.assertIsNotNone(image)
		# Check that pixel uses palette color 0 (red)
		pixel = image.getpixel((0, 0))
		self.assertEqual(pixel, (255, 0, 0))


class TestFFMQData(unittest.TestCase):
	"""Test FFMQ-specific data validation"""
	
	def setUp(self):
		self.data_dir = Path(__file__).parent.parent / 'games' / 'snes' / 'ffmq' / 'assets' / 'editable' / 'data'
		self.text_dir = Path(__file__).parent.parent / 'games' / 'snes' / 'ffmq' / 'assets' / 'editable' / 'text'
	
	def test_enemies_json_valid(self):
		"""Validate enemies.json structure"""
		enemies_path = self.data_dir / 'enemies.json'
		if not enemies_path.exists():
			self.skipTest("enemies.json not found")
		
		with open(enemies_path, 'r') as f:
			data = json.load(f)
		
		self.assertIn('enemies', data)
		self.assertGreater(len(data['enemies']), 0)
		
		# Check first enemy has required fields
		enemy = data['enemies'][0]
		required_fields = ['id', 'name', 'hp', 'attack', 'defense']
		for field in required_fields:
			self.assertIn(field, enemy, f"Missing field: {field}")
	
	def test_characters_json_valid(self):
		"""Validate characters.json structure"""
		chars_path = self.data_dir / 'characters.json'
		if not chars_path.exists():
			self.skipTest("characters.json not found")
		
		with open(chars_path, 'r') as f:
			data = json.load(f)
		
		self.assertIn('characters', data)
		self.assertEqual(len(data['characters']), 4)  # Benjamin, Kaeli, Phoebe, Reuben
		
		# Check character names
		names = [c['name'] for c in data['characters']]
		self.assertIn('Benjamin', names)
		self.assertIn('Kaeli', names)
	
	def test_spells_json_valid(self):
		"""Validate spells.json structure"""
		spells_path = self.data_dir / 'spells_full.json'
		if not spells_path.exists():
			self.skipTest("spells_full.json not found")
		
		with open(spells_path, 'r') as f:
			data = json.load(f)
		
		self.assertIn('spells', data)
		self.assertGreater(len(data['spells']), 0)
		
		# Check spell has name and power
		spell = data['spells'][0]
		self.assertIn('name', spell)
		self.assertIn('power', spell)
	
	def test_attacks_json_valid(self):
		"""Validate attacks.json structure"""
		attacks_path = self.data_dir / 'attacks.json'
		if not attacks_path.exists():
			self.skipTest("attacks.json not found")
		
		with open(attacks_path, 'r') as f:
			data = json.load(f)
		
		self.assertIn('attacks', data)
		self.assertGreater(len(data['attacks']), 0)
	
	def test_simple_tbl_exists(self):
		"""Check simple.tbl exists"""
		tbl_path = self.text_dir / 'simple.tbl'
		self.assertTrue(tbl_path.exists(), "simple.tbl not found")
	
	def test_complex_tbl_exists(self):
		"""Check complex.tbl exists"""
		tbl_path = self.text_dir / 'complex.tbl'
		self.assertTrue(tbl_path.exists(), "complex.tbl not found")


class TestTextExtraction(unittest.TestCase):
	"""Test text extraction functionality"""
	
	def setUp(self):
		self.pipeline = Pipeline()
	
	def test_load_table_basic(self):
		"""Test loading a TBL file"""
		# Create a temp TBL file
		with tempfile.NamedTemporaryFile(mode='w', suffix='.tbl', delete=False, encoding='utf-8') as f:
			f.write("90=0\n")
			f.write("91=1\n")
			f.write("9A=A\n")
			f.write("9B=B\n")
			f.write("B4=a\n")
			f.write("00=[END]\n")
			temp_path = f.name
		
		try:
			table = self.pipeline.load_table(Path(temp_path))
			self.assertEqual(table[0x90], '0')
			self.assertEqual(table[0x91], '1')
			self.assertEqual(table[0x9A], 'A')
			self.assertEqual(table[0xB4], 'a')
			self.assertEqual(table[0x00], '[END]')
		finally:
			os.unlink(temp_path)
	
	def test_decode_text_simple(self):
		"""Test decoding text with character table"""
		# Create test ROM data
		test_data = bytes([0x9A, 0x9B, 0x9C, 0x00])  # "ABC\0"
		
		with tempfile.NamedTemporaryFile(suffix='.bin', delete=False) as f:
			# Pad to 32KB
			f.write(test_data + b'\x00' * (0x8000 - len(test_data)))
			temp_path = f.name
		
		try:
			self.pipeline.load_rom(Path(temp_path))
			
			# Simple table mapping
			table = {0x9A: 'A', 0x9B: 'B', 0x9C: 'C'}
			text = self.pipeline.decode_text(0, 10, table)
			
			self.assertEqual(text, 'ABC')
		finally:
			os.unlink(temp_path)
	
	def test_extract_text_table(self):
		"""Test extracting fixed-size text table"""
		# Create ROM with 3 entries of 4 bytes each
		entries = [
			bytes([0x9A, 0x9B, 0x9C, 0x00]),  # ABC
			bytes([0x9D, 0x9E, 0x9F, 0x00]),  # DEF
			bytes([0x90, 0x91, 0x92, 0x00]),  # 012
		]
		test_data = b''.join(entries)
		
		with tempfile.NamedTemporaryFile(suffix='.bin', delete=False) as f:
			f.write(test_data + b'\x00' * (0x8000 - len(test_data)))
			temp_path = f.name
		
		try:
			self.pipeline.load_rom(Path(temp_path))
			
			# Table mapping
			table = {
				0x9A: 'A', 0x9B: 'B', 0x9C: 'C',
				0x9D: 'D', 0x9E: 'E', 0x9F: 'F',
				0x90: '0', 0x91: '1', 0x92: '2'
			}
			
			texts = self.pipeline.extract_text_table(0, 3, 4, table)
			
			self.assertEqual(len(texts), 3)
			self.assertEqual(texts[0], 'ABC')
			self.assertEqual(texts[1], 'DEF')
			self.assertEqual(texts[2], '012')
		finally:
			os.unlink(temp_path)
	
	def test_decode_unknown_bytes(self):
		"""Test handling of unknown bytes in text"""
		test_data = bytes([0x9A, 0xFF, 0x9B, 0x00])
		
		with tempfile.NamedTemporaryFile(suffix='.bin', delete=False) as f:
			f.write(test_data + b'\x00' * (0x8000 - len(test_data)))
			temp_path = f.name
		
		try:
			self.pipeline.load_rom(Path(temp_path))
			table = {0x9A: 'A', 0x9B: 'B'}
			text = self.pipeline.decode_text(0, 10, table)
			
			# Unknown byte 0xFF should be formatted as [FF]
			self.assertEqual(text, 'A[FF]B')
		finally:
			os.unlink(temp_path)


def run_tests():
	"""Run all tests"""
	loader = unittest.TestLoader()
	suite = unittest.TestSuite()
	
	# Add test classes
	suite.addTests(loader.loadTestsFromTestCase(TestChecksums))
	suite.addTests(loader.loadTestsFromTestCase(TestPlatformDetection))
	suite.addTests(loader.loadTestsFromTestCase(TestTileExtraction))
	suite.addTests(loader.loadTestsFromTestCase(TestPaletteExtraction))
	suite.addTests(loader.loadTestsFromTestCase(TestVerification))
	suite.addTests(loader.loadTestsFromTestCase(TestImageConversion))
	suite.addTests(loader.loadTestsFromTestCase(TestFFMQData))
	suite.addTests(loader.loadTestsFromTestCase(TestTextExtraction))
	
	# Run tests
	runner = unittest.TextTestRunner(verbosity=2)
	result = runner.run(suite)
	
	return 0 if result.wasSuccessful() else 1


if __name__ == '__main__':
	sys.exit(run_tests())
