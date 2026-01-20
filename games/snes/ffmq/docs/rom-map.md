# Final Fantasy: Mystic Quest - ROM Map

## Overview

| Property | Value |
|----------|-------|
| Platform | SNES (65816) |
| Mapping | LoROM |
| ROM Size | 512 KB (4 Mbit) |
| SRAM | 8 KB (battery backed) |
| CRC32 | 2c52c792 |

## ROM Header ($7FC0)

| Offset | Size | Description | Value |
|--------|------|-------------|-------|
| $7FC0 | 21 | Title | "FF MYSTIC QUEST" |
| $7FD5 | 1 | Map Mode | $20 (LoROM) |
| $7FD6 | 1 | ROM Type | $02 (ROM + SRAM) |
| $7FD7 | 1 | ROM Size | $09 (512 KB) |
| $7FD8 | 1 | SRAM Size | $03 (8 KB) |
| $7FD9 | 1 | Region | $01 (USA) |
| $7FDA | 1 | Developer | $C3 (Square) |
| $7FDB | 1 | Version | $01 (V1.1) |

## Known Graphics Regions

| Offset | Tiles | BPP | Description |
|--------|-------|-----|-------------|
| $007000 | 128 | 2 | Font/Text tiles |
| $03F000 | 256 | 4 | Unknown graphics |
| $064000 | 256 | 4 | Possible sprites |
| $06B000 | 256 | 4 | Possible sprites |
| $071000 | 512 | 4 | Tile graphics |
| $076000 | 512 | 4 | Tile graphics |

## Character Data ($0650B0)

Character stats are stored at ROM offset $0650B0 with 80 bytes per character.

## Spell Data

Spell data extracted and documented in assets/editable/data/spells.json.

## Data Sections

_More ROM analysis needed to fully document data sections._
