# Final Fantasy: Mystic Quest - ROM Map

Complete ROM memory mapping for Final Fantasy Mystic Quest (SNES).

## ROM Information

| Property | Value |
|----------|-------|
| **Platform** | Super Nintendo (SNES) |
| **CPU** | 65816 |
| **Mapping** | LoROM |
| **ROM Size** | 512 KB (4 Mbit) |
| **SRAM** | 8 KB (battery backed) |
| **Region** | USA/NTSC |
| **CRC32** | `2c52c792` |
| **MD5** | `f7faeae5a847c098d677070920769ca2` |

## ROM Header ($7FC0-$7FDF)

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
| $7FDC | 2 | Checksum Complement | |
| $7FDE | 2 | Checksum | $B800 |

## Memory Mapping (LoROM)

### Bank Layout

| Bank | ROM Offset | CPU Address | Contents |
|------|------------|-------------|----------|
| $00-$0F | $000000-$07FFFF | $8000-$FFFF | Program code + data |

### Mirror Regions

- Banks $80-$8F mirror $00-$0F (FastROM access)
- Banks $40-$4F mirror $00-$0F (alternate access)

---

## Game Code Banks

| Bank | Address | Contents |
|------|---------|----------|
| $00 | $8000-$FFFF | Reset vectors, init code |
| $01 | $8000-$FFFF | Battle engine core |
| $02 | $8000-$FFFF | Enemy stats, map engine |
| $03 | $8000-$FFFF | Menu system, inventory |
| $04 | $8000-$FFFF | Text data, dialog pointers |
| $05 | $8000-$FFFF | Graphics loading routines |
| $06 | $8000-$FFFF | Spell data, audio driver |
| $07 | $8000-$FFFF | Additional routines |

---

## Enemy Data ($02:C275 / File: $013C75)

Enemy stats table containing 83 enemies, 14 bytes per entry.

### Structure (14 bytes per enemy)

| Offset | Size | Description |
|--------|------|-------------|
| +$00 | 2 | HP (16-bit little-endian) |
| +$02 | 1 | Attack |
| +$03 | 1 | Defense |
| +$04 | 1 | Speed |
| +$05 | 1 | Magic |
| +$06 | 2 | Resistances (16-bit bitfield) |
| +$08 | 1 | Magic Defense |
| +$09 | 1 | Magic Evade |
| +$0A | 1 | Accuracy |
| +$0B | 1 | Evade |
| +$0C | 2 | Weaknesses (16-bit bitfield) |

### Resistance/Weakness Bitfield

| Bit | Element |
|-----|---------|
| 0 | Fire |
| 1 | Water |
| 2 | Poison |
| 3 | Wind |
| 4 | Paralysis |
| 5 | Sleep |
| 6 | Stone |
| 7 | Confusion |
| 8-15 | Unknown/Weapon types |

---

## Attack Data ($02:BC78 / File: $013C78)

Battle action data for 169 attacks, 7 bytes per entry.

### Structure (7 bytes per attack)

| Offset | Size | Description |
|--------|------|-------------|
| +$00 | 1 | Unknown 1 |
| +$01 | 1 | Unknown 2 |
| +$02 | 1 | Power |
| +$03 | 1 | Attack Type |
| +$04 | 1 | Attack Sound |
| +$05 | 1 | Unknown 3 |
| +$06 | 1 | Target Animation |

---

## Spell Data ($06:0F36 / File: $030F36)

Spell data table for White, Black, and Wizard magic.

### Structure (6 bytes per spell)

| Offset | Size | Description |
|--------|------|-------------|
| +$00 | 1 | Power |
| +$01 | 1 | MP Cost (Byte 1) |
| +$02 | 1 | Element/Type |
| +$03 | 1 | Effect flags (Byte 3) |
| +$04 | 1 | Target flags (Byte 4) |
| +$05 | 1 | Unknown (Byte 5) |

---

## Character Data ($06:50B0 / File: $0350B0)

Character stats stored at $0650B0, 80 bytes per character (4 characters).

| Character | Offset | Starting Level |
|-----------|--------|----------------|
| Benjamin | $0650B0 | 1 |
| Kaeli | $065100 | 3 |
| Phoebe | $065150 | 7 |
| Reuben | $0651A0 | 15 |

### Character Structure (80 bytes per character)

| Offset | Size | Description |
|--------|------|-------------|
| +$00 | 2 | Starting HP |
| +$02 | 2 | Starting MP |
| +$04 | 1 | Strength |
| +$05 | 1 | Defense |
| +$06 | 1 | Speed |
| +$07 | 1 | Magic |
| +$08 | 1 | Accuracy |
| +$09 | 1 | Evade |
| +$0A | 1 | Magic Defense |
| +$0B-$4F | - | Equipment slots, growth tables |

---

## Graphics Data

### Main Tile Banks

| File Offset | CPU Address | Size | BPP | Description |
|-------------|-------------|------|-----|-------------|
| $028C80 | $05:8C80 | $36600 | 4 | Main background tiles (34 banks) |
| $020000 | $04:8000 | $1800 | 4 | Extra background tiles |
| $03B013 | $07:B013 | $10BE9 | 4 | Sprite graphics data |

### Known Graphics Regions (Extracted)

| Offset | Tiles | BPP | Description |
|--------|-------|-----|-------------|
| $007000 | 128 | 2 | Font/Text tiles |
| $03F000 | 256 | 4 | Unknown graphics |
| $064000 | 256 | 4 | Possible sprites |
| $06B000 | 256 | 4 | Possible sprites |
| $071000 | 512 | 4 | Tile graphics |
| $076000 | 512 | 4 | Tile graphics |

---

## Map Data ($02:8400 area)

Maps are stored with 16-byte headers per map.

### Map Header Structure (16 bytes)

| Offset | Size | Description |
|--------|------|-------------|
| +$00 | 1 | Map ID |
| +$01 | 1 | Map Type |
| +$02 | 1 | Width (tiles) |
| +$03 | 1 | Height (tiles) |
| +$04 | 1 | Tileset ID |
| +$05 | 1 | Palette ID |
| +$06 | 1 | Music ID |
| +$07 | 1 | Flags |
| +$08 | 2 | Layout Pointer |
| +$0A | 2 | Collision Pointer |
| +$0C | 2 | Events Pointer |
| +$0E | 2 | Reserved |

---

## Text Data ($04:F000 area)

### Item Names ($04:F000 / File: $04F000)

- Address: $04F000
- Count: 256 entries
- Max Length: 12 bytes per name

### Text Encoding

FFMQ uses a custom text encoding with control codes:

| Code | Meaning |
|------|---------|
| $00 | End of string |
| $01 | Newline |
| $02 | Wait for input |
| $03 | Clear window |

---

## Audio Data

### SPC700 Program

Located in ROM for transfer to SPC700 audio processor.

| Offset | Size | Description |
|--------|------|-------------|
| TBD | 64 KB | SPC program + driver |
| TBD | varies | Music sequence data |
| TBD | varies | BRR sample data |
| TBD | varies | Sound effects |

---

## Data Files Reference

See `assets/editable/data/` for extracted data:

| File | Description |
|------|-------------|
| `enemies.json` | 83 enemies with full stats |
| `attacks.json` | 169 battle actions |
| `spells.json` | Magic spell data |
| `spells_full.json` | Complete spell data with types |
| `characters.json` | 4 playable characters |
| `maps.json` | Map header data |
| `npcs.json` | NPC data |
| `chests.json` | Treasure chest data |
| `encounters.json` | Encounter data |

---

## Sources

- ffmq-info repository (comprehensive disassembly)
- GameInfo ROM analysis tools
- Original game research and testing
