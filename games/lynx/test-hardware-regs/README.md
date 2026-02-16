# Test Hardware Registers

A test ROM demonstrating Atari Lynx hardware register access (Suzy and Mikey).

## Purpose

Tests that Peony correctly identifies and labels Lynx hardware registers
during disassembly.

## Hardware Tested

### Mikey Registers ($FD00-$FDFF)
- Timer registers (TIM0-TIM7)
- Audio registers (AUD0-AUD3)
- Serial registers (SERCTL, SERDAT)
- Display registers (DISPCTL, PBKUP)
- Interrupt registers (INTSET, INTRST)
- Palette registers (GREEN, BLUERED)

### Suzy Registers ($FC00-$FCFF)
- Sprite control registers
- Math coprocessor registers
- Collision detection

## Build

```powershell
.\build.ps1
```

