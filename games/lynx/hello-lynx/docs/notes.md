# Development Notes - Hello Lynx

## 65SC02 Instructions Used

This example demonstrates several 65SC02-specific instructions:

### STZ - Store Zero
```asm
stz frame_count     ; Store zero to memory (no need for lda #$00)
```

### BRA - Branch Relative Always
```asm
bra main_loop       ; Unconditional branch (like jmp but shorter)
```

### PHX/PLX, PHY/PLY - Push/Pull X and Y
```asm
phx                 ; Save X register to stack
phy                 ; Save Y register to stack
ply                 ; Restore Y register from stack
plx                 ; Restore X register from stack
```

## Memory Considerations

### Hardware Registers
The Lynx has two hardware chips mapped to specific addresses:

- **Suzy** ($fc00-$fcff): Graphics coprocessor
  - Sprite rendering
  - Hardware math (multiply/divide)
  - Collision detection

- **Mikey** ($fd00-$fdff): System functions
  - Audio (4 channels)
  - Timers
  - UART
  - Display control
  - Palette

### Boot ROM
The range $fe00-$ffff contains the Boot ROM. This is read-only and cannot be written to. The vectors at $fff8-$ffff redirect to the Boot ROM's entry points.

## Build Verification

Once Poppy fully supports Lynx:

1. Build: `poppy build src/main.pasm -o build/hello-lynx.o`
2. Verify warnings for Suzy/Mikey register writes
3. Disassemble with Peony to verify roundtrip

## References

- [Atari Lynx Development Guide](../../../docs/atari-lynx-guide.md) (if exists)
- [Epyx Developer Documentation](https://atarilynxdeveloper.wordpress.com/)
- [Lynx Hardware Reference](https://www.monlynx.de/lynx/lynxtech.html)
