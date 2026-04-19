# Zelda 3 Research Notes

## ROM Layout

- **Size:** 1 MB (0x100000 bytes) - 8 Mbit
- **Mapping:** HiROM (SNES)
- **Banks:** $c0-$df (program), $e0-$ff (data mirrors)
- **SRAM:** 8 KB at $70:0000-$70:1fff

## Known Data Regions

### Graphics
- Compressed tilesets loaded via DMA
- 4BPP tile format (standard SNES)
- Sprite graphics in multiple banks

### Text
- Custom text engine with variable-width font
- Dialog text is likely compressed (DTE or custom)
- Item names, location names in separate tables

### Game Data
- Enemy stats tables
- Dungeon room data (compressed)
- Overworld map data
- Item tables
- Sprite attribute tables

## References

- [Data Crystal - Zelda 3](https://datacrystal.tcrf.net/wiki/The_Legend_of_Zelda:_A_Link_to_the_Past)
- [ALTTP Disassembly](https://github.com/snesrev/zelern) (reference only)
