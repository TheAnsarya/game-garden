#!/usr/bin/env python3
"""
ROM Verification Tool
Verifies ROM files against expected checksums (CRC32, MD5, SHA256).
"""

import argparse
import hashlib
import json
import sys
from pathlib import Path


def calculate_crc32(data: bytes) -> str:
	"""Calculate CRC32 of data and return as lowercase hex string."""
	import zlib
	return format(zlib.crc32(data) & 0xffffffff, '08x')


def calculate_md5(data: bytes) -> str:
	"""Calculate MD5 of data and return as lowercase hex string."""
	return hashlib.md5(data).hexdigest()


def calculate_sha256(data: bytes) -> str:
	"""Calculate SHA256 of data and return as lowercase hex string."""
	return hashlib.sha256(data).hexdigest()


def verify_rom(rom_path: Path, checksums: dict) -> tuple[bool, list[str]]:
	"""
	Verify a ROM file against expected checksums.

	Args:
		rom_path: Path to the ROM file
		checksums: Dict with expected 'crc32', 'md5', and/or 'sha256'

	Returns:
		Tuple of (all_passed, list of error messages)
	"""
	if not rom_path.exists():
		return False, [f"ROM file not found: {rom_path}"]

	data = rom_path.read_bytes()
	errors = []

	# Check each provided checksum
	if 'crc32' in checksums:
		actual = calculate_crc32(data)
		expected = checksums['crc32'].lower()
		if actual != expected:
			errors.append(f"CRC32 mismatch: expected {expected}, got {actual}")

	if 'md5' in checksums:
		actual = calculate_md5(data)
		expected = checksums['md5'].lower()
		if actual != expected:
			errors.append(f"MD5 mismatch: expected {expected}, got {actual}")

	if 'sha256' in checksums:
		actual = calculate_sha256(data)
		expected = checksums['sha256'].lower()
		if actual != expected:
			errors.append(f"SHA256 mismatch: expected {expected}, got {actual}")

	return len(errors) == 0, errors


def calculate_checksums(rom_path: Path) -> dict:
	"""Calculate all checksums for a ROM file."""
	data = rom_path.read_bytes()
	return {
		'crc32': calculate_crc32(data),
		'md5': calculate_md5(data),
		'sha256': calculate_sha256(data),
		'size': len(data)
	}


def main():
	parser = argparse.ArgumentParser(description='Verify ROM checksums')
	parser.add_argument('rom', type=Path, help='Path to ROM file')
	parser.add_argument('--checksums', '-c', type=Path,
						help='Path to checksums.json file')
	parser.add_argument('--calculate', action='store_true',
						help='Calculate and display checksums (no verification)')
	parser.add_argument('--json', action='store_true',
						help='Output in JSON format')

	args = parser.parse_args()

	if args.calculate:
		# Just calculate and display checksums
		if not args.rom.exists():
			print(f"Error: ROM file not found: {args.rom}", file=sys.stderr)
			sys.exit(1)

		checksums = calculate_checksums(args.rom)

		if args.json:
			print(json.dumps(checksums, indent='\t'))
		else:
			print(f"ROM: {args.rom.name}")
			print(f"Size: {checksums['size']:,} bytes")
			print(f"CRC32: {checksums['crc32']}")
			print(f"MD5: {checksums['md5']}")
			print(f"SHA256: {checksums['sha256']}")

		sys.exit(0)

	# Verification mode
	if not args.checksums:
		print("Error: --checksums required for verification", file=sys.stderr)
		sys.exit(1)

	if not args.checksums.exists():
		print(f"Error: Checksums file not found: {args.checksums}", file=sys.stderr)
		sys.exit(1)

	with open(args.checksums, 'r', encoding='utf-8') as f:
		checksums = json.load(f)

	passed, errors = verify_rom(args.rom, checksums)

	if args.json:
		result = {'passed': passed, 'errors': errors}
		print(json.dumps(result, indent='\t'))
	else:
		if passed:
			print(f"✅ ROM verified: {args.rom.name}")
		else:
			print(f"❌ ROM verification failed: {args.rom.name}")
			for error in errors:
				print(f"   {error}")

	sys.exit(0 if passed else 1)


if __name__ == '__main__':
	main()
