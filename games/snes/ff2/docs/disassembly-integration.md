# Disassembly Integration

## Run Summary

- ROM: Final Fantasy II (U) (V1.1).smc
- Platform: SNES
- Disassembly mode: all banks, no hints, static analysis off
- Result: 1,634 blocks

## Commands Used

```powershell
# Disassembly
cd C:\Users\me\source\repos\peony

dotnet run --project src/Peony.Cli -c Release -- disasm "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc" --platform snes --all-banks --format poppy --output "C:\Users\me\source\repos\game-garden\games\snes\ff2\src\main.pasm"

# Metadata export

dotnet run --project src/Peony.Cli -c Release -- export "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc" --platform snes --format pansy --output "C:\Users\me\source\repos\game-garden\games\snes\ff2\metadata\ff2-peony.pansy"

# Asset extraction

dotnet run --project src/Peony.Cli -c Release -- chr "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc" --platform snes --offset 0x000000 --size 0x8000 --bits 4 --output "C:\Users\me\source\repos\game-garden\games\snes\ff2\assets\editable\graphics\ff2_chr_000000.bmp"

dotnet run --project src/Peony.Cli -c Release -- text "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc" --scan --min-length 4 --format json --output "C:\Users\me\source\repos\game-garden\games\snes\ff2\assets\editable\text\ff2_text_scan.json"
```

## Coverage Snapshot

- Code: 65,962 bytes
- Data: 0 bytes
- Unknown: 982,614 bytes
- Labels: 8,007
- Cross-references: 10,278

## Integration Notes

1. Nexen export step is planned as the metadata seed source for higher-confidence classification.
2. Pansy metadata is available and wired into the project at `metadata/ff2.pansy`.
3. Rebuild/byte-identical verification remains an open task in this phase.
