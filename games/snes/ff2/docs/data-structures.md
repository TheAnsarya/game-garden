# Data Structures

## Status

Data structure extraction is in progress.

## Candidate Structures

1. Character base stats table
2. Enemy formation table
3. Spell/effect data table
4. Item definition table
5. Event/script pointer tables

## Workflow

1. Identify table starts and element sizes in disassembly.
2. Validate pointer-table boundaries and bank behavior.
3. Export to JSON in assets/editable/data/.
4. Roundtrip via binary reinsertion and ROM rebuild checks.
