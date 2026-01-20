#!/usr/bin/env python3
"""
SNES Asset Extraction Tool
Extracts graphics, palettes, and data from SNES ROMs.

Supports:
- 2bpp, 4bpp, 8bpp tile graphics
- SNES palettes (15-bit BGR)
- Raw data extraction with offset/size
"""

import argparse
import json
import struct
import sys
from pathlib import Path
from typing import Optional

try:
	from PIL import Image
except ImportError:
	print("Error: Pillow required. Install with: pip install Pillow", file=sys.stderr)
	sys.exit(1)


# SNES color conversion (15-bit BGR to 24-bit RGB)
def snes_color_to_rgb(color: int) -> tuple[int, int, int]:
	"""Convert SNES 15-bit BGR color to RGB tuple."""
	r = (color & 0x1f) << 3
	g = ((color >> 5) & 0x1f) << 3
	b = ((color >> 10) & 0x1f) << 3
	# Expand 5-bit to 8-bit properly
	r = r | (r >> 5)
	g = g | (g >> 5)
	b = b | (b >> 5)
	return (r, g, b)


def rgb_to_snes_color(r: int, g: int, b: int) -> int:
	"""Convert RGB to SNES 15-bit BGR color."""
	return ((r >> 3) & 0x1f) | (((g >> 3) & 0x1f) << 5) | (((b >> 3) & 0x1f) << 10)


def extract_palette(rom_data: bytes, offset: int, num_colors: int = 16) -> list[tuple[int, int, int]]:
	"""Extract SNES palette from ROM."""
	palette = []
	for i in range(num_colors):
		color = struct.unpack_from('<H', rom_data, offset + i * 2)[0]
		palette.append(snes_color_to_rgb(color))
	return palette


def decode_2bpp_tile(data: bytes, offset: int = 0) -> list[list[int]]:
	"""Decode a single 8x8 2bpp tile (16 bytes)."""
	tile = [[0] * 8 for _ in range(8)]
	for y in range(8):
		plane0 = data[offset + y * 2]
		plane1 = data[offset + y * 2 + 1]
		for x in range(8):
			bit0 = (plane0 >> (7 - x)) & 1
			bit1 = (plane1 >> (7 - x)) & 1
			tile[y][x] = bit0 | (bit1 << 1)
	return tile


def decode_4bpp_tile(data: bytes, offset: int = 0) -> list[list[int]]:
	"""Decode a single 8x8 4bpp tile (32 bytes)."""
	tile = [[0] * 8 for _ in range(8)]
	for y in range(8):
		# Planes 0 and 1
		plane0 = data[offset + y * 2]
		plane1 = data[offset + y * 2 + 1]
		# Planes 2 and 3
		plane2 = data[offset + 16 + y * 2]
		plane3 = data[offset + 16 + y * 2 + 1]
		for x in range(8):
			bit0 = (plane0 >> (7 - x)) & 1
			bit1 = (plane1 >> (7 - x)) & 1
			bit2 = (plane2 >> (7 - x)) & 1
			bit3 = (plane3 >> (7 - x)) & 1
			tile[y][x] = bit0 | (bit1 << 1) | (bit2 << 2) | (bit3 << 3)
	return tile


def decode_8bpp_tile(data: bytes, offset: int = 0) -> list[list[int]]:
	"""Decode a single 8x8 8bpp tile (64 bytes)."""
	tile = [[0] * 8 for _ in range(8)]
	for y in range(8):
		# 8 bitplanes
		planes = [data[offset + p * 16 + y * 2 + (p % 2)] for p in range(8)]
		for x in range(8):
			pixel = 0
			for p in range(8):
				bit = (planes[p] >> (7 - x)) & 1
				pixel |= (bit << p)
			tile[y][x] = pixel
	return tile


def tiles_to_image(
	tiles: list[list[list[int]]],
	palette: list[tuple[int, int, int]],
	tiles_per_row: int = 16,
	transparent_index: int = 0
) -> Image.Image:
	"""Convert decoded tiles to a PIL Image."""
	if not tiles:
		return Image.new('RGBA', (8, 8), (0, 0, 0, 0))

	num_tiles = len(tiles)
	rows = (num_tiles + tiles_per_row - 1) // tiles_per_row
	width = tiles_per_row * 8
	height = rows * 8

	img = Image.new('RGBA', (width, height), (0, 0, 0, 0))

	for idx, tile in enumerate(tiles):
		tx = (idx % tiles_per_row) * 8
		ty = (idx // tiles_per_row) * 8
		for y in range(8):
			for x in range(8):
				color_idx = tile[y][x]
				if color_idx == transparent_index:
					img.putpixel((tx + x, ty + y), (0, 0, 0, 0))
				elif color_idx < len(palette):
					r, g, b = palette[color_idx]
					img.putpixel((tx + x, ty + y), (r, g, b, 255))
				else:
					# Out of range - use magenta
					img.putpixel((tx + x, ty + y), (255, 0, 255, 255))

	return img


def extract_graphics(
	rom_data: bytes,
	offset: int,
	num_tiles: int,
	bpp: int = 4,
	palette: Optional[list[tuple[int, int, int]]] = None,
	tiles_per_row: int = 16
) -> Image.Image:
	"""Extract graphics tiles from ROM and return as image."""
	tile_size = {2: 16, 4: 32, 8: 64}[bpp]
	decode_func = {2: decode_2bpp_tile, 4: decode_4bpp_tile, 8: decode_8bpp_tile}[bpp]

	tiles = []
	for i in range(num_tiles):
		tile_offset = offset + i * tile_size
		if tile_offset + tile_size <= len(rom_data):
			tiles.append(decode_func(rom_data, tile_offset))

	# Default grayscale palette if none provided
	if palette is None:
		num_colors = 2 ** bpp
		palette = [(i * 255 // (num_colors - 1),) * 3 for i in range(num_colors)]

	return tiles_to_image(tiles, palette, tiles_per_row)


def save_palette_json(palette: list[tuple[int, int, int]], output_path: Path):
	"""Save palette to JSON format."""
	palette_data = {
		"format": "snes_palette",
		"colors": [{"r": r, "g": g, "b": b, "hex": f"#{r:02x}{g:02x}{b:02x}"} for r, g, b in palette],
		"snes_values": [rgb_to_snes_color(r, g, b) for r, g, b in palette]
	}
	with open(output_path, 'w', encoding='utf-8') as f:
		json.dump(palette_data, f, indent='\t')


def save_palette_image(palette: list[tuple[int, int, int]], output_path: Path, swatch_size: int = 16):
	"""Save palette as visual image."""
	num_colors = len(palette)
	cols = min(16, num_colors)
	rows = (num_colors + cols - 1) // cols
	img = Image.new('RGB', (cols * swatch_size, rows * swatch_size), (0, 0, 0))

	for i, (r, g, b) in enumerate(palette):
		x = (i % cols) * swatch_size
		y = (i // cols) * swatch_size
		for py in range(swatch_size):
			for px in range(swatch_size):
				img.putpixel((x + px, y + py), (r, g, b))

	img.save(output_path)


def extract_raw_data(rom_data: bytes, offset: int, size: int) -> bytes:
	"""Extract raw bytes from ROM."""
	return rom_data[offset:offset + size]


def load_extraction_config(config_path: Path) -> dict:
	"""Load extraction configuration from JSON file."""
	with open(config_path, 'r', encoding='utf-8') as f:
		return json.load(f)


def run_extraction(rom_path: Path, config: dict, output_dir: Path):
	"""Run extraction based on configuration."""
	rom_data = rom_path.read_bytes()
	print(f"Loaded ROM: {rom_path.name} ({len(rom_data):,} bytes)")

	# Extract palettes first (needed for graphics)
	palettes = {}
	if 'palettes' in config:
		palette_dir = output_dir / 'palettes'
		palette_dir.mkdir(parents=True, exist_ok=True)

		for pal_config in config['palettes']:
			name = pal_config['name']
			offset = int(pal_config['offset'], 16) if isinstance(pal_config['offset'], str) else pal_config['offset']
			num_colors = pal_config.get('colors', 16)

			print(f"  Extracting palette: {name} @ ${offset:06x}")
			palette = extract_palette(rom_data, offset, num_colors)
			palettes[name] = palette

			# Save as JSON
			save_palette_json(palette, palette_dir / f"{name}.json")
			# Save as visual image
			save_palette_image(palette, palette_dir / f"{name}.png")

	# Extract graphics
	if 'graphics' in config:
		graphics_dir = output_dir / 'graphics'
		graphics_dir.mkdir(parents=True, exist_ok=True)

		for gfx_config in config['graphics']:
			name = gfx_config['name']
			offset = int(gfx_config['offset'], 16) if isinstance(gfx_config['offset'], str) else gfx_config['offset']
			num_tiles = gfx_config.get('tiles', 256)
			bpp = gfx_config.get('bpp', 4)
			tiles_per_row = gfx_config.get('tiles_per_row', 16)
			palette_name = gfx_config.get('palette')

			print(f"  Extracting graphics: {name} @ ${offset:06x} ({num_tiles} tiles, {bpp}bpp)")

			palette = palettes.get(palette_name) if palette_name else None
			img = extract_graphics(rom_data, offset, num_tiles, bpp, palette, tiles_per_row)
			img.save(graphics_dir / f"{name}.png")

			# Save metadata
			meta = {
				"name": name,
				"offset": f"0x{offset:06x}",
				"tiles": num_tiles,
				"bpp": bpp,
				"palette": palette_name,
				"tile_size": 8,
				"tiles_per_row": tiles_per_row
			}
			with open(graphics_dir / f"{name}.json", 'w', encoding='utf-8') as f:
				json.dump(meta, f, indent='\t')

	# Extract raw data
	if 'data' in config:
		data_dir = output_dir / 'data'
		data_dir.mkdir(parents=True, exist_ok=True)

		for data_config in config['data']:
			name = data_config['name']
			offset = int(data_config['offset'], 16) if isinstance(data_config['offset'], str) else data_config['offset']
			size = data_config['size']

			print(f"  Extracting data: {name} @ ${offset:06x} ({size} bytes)")
			data = extract_raw_data(rom_data, offset, size)

			# Save as binary
			(data_dir / f"{name}.bin").write_bytes(data)

			# Save metadata
			meta = {
				"name": name,
				"offset": f"0x{offset:06x}",
				"size": size
			}
			with open(data_dir / f"{name}.json", 'w', encoding='utf-8') as f:
				json.dump(meta, f, indent='\t')


def main():
	parser = argparse.ArgumentParser(description='Extract assets from SNES ROMs')
	parser.add_argument('rom', type=Path, help='Path to ROM file')
	parser.add_argument('--config', '-c', type=Path, help='Extraction config JSON file')
	parser.add_argument('--output', '-o', type=Path, default=Path('extracted'),
						help='Output directory')

	# Quick extraction options
	parser.add_argument('--graphics', '-g', type=str,
						help='Quick graphics extract: OFFSET,TILES,BPP (e.g., 0x10000,256,4)')
	parser.add_argument('--palette', '-p', type=str,
						help='Quick palette extract: OFFSET,COLORS (e.g., 0x1000,16)')

	args = parser.parse_args()

	if not args.rom.exists():
		print(f"Error: ROM not found: {args.rom}", file=sys.stderr)
		sys.exit(1)

	args.output.mkdir(parents=True, exist_ok=True)

	if args.config:
		# Config-based extraction
		config = load_extraction_config(args.config)
		run_extraction(args.rom, config, args.output)
	elif args.graphics or args.palette:
		# Quick extraction mode
		rom_data = args.rom.read_bytes()
		print(f"Loaded ROM: {args.rom.name} ({len(rom_data):,} bytes)")

		if args.palette:
			parts = args.palette.split(',')
			offset = int(parts[0], 16) if parts[0].startswith('0x') else int(parts[0])
			num_colors = int(parts[1]) if len(parts) > 1 else 16

			palette = extract_palette(rom_data, offset, num_colors)
			save_palette_json(palette, args.output / 'palette.json')
			save_palette_image(palette, args.output / 'palette.png')
			print(f"Extracted palette: {num_colors} colors")

		if args.graphics:
			parts = args.graphics.split(',')
			offset = int(parts[0], 16) if parts[0].startswith('0x') else int(parts[0])
			num_tiles = int(parts[1]) if len(parts) > 1 else 256
			bpp = int(parts[2]) if len(parts) > 2 else 4

			img = extract_graphics(rom_data, offset, num_tiles, bpp)
			img.save(args.output / 'graphics.png')
			print(f"Extracted graphics: {num_tiles} tiles ({bpp}bpp)")
	else:
		print("Error: Provide --config or use quick extract options (--graphics, --palette)")
		sys.exit(1)

	print(f"\n✅ Extraction complete! Output: {args.output}")


if __name__ == '__main__':
	main()
