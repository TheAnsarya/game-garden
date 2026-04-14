# 🔧 Tooling TODO

*Last Updated: 2026-04-13*

## Pipeline Tools

- [ ] Integrate Poppy build step into `pipeline-build.ps1`
- [ ] Add automatic re-verification after rebuild
- [ ] Add batch processing for multiple games
- [ ] CI/CD pipeline for testing rebuilds

## Asset Tools

- [ ] Generic tilemap extractor (JSON/TMX output)
- [ ] Palette editor (JSON → binary)
- [ ] Text table auto-detection
- [ ] Binary diff tool for ROM comparison

## Verification

- [ ] Automated byte-identical verification in pipeline
- [ ] Checksum database for known good ROMs
- [ ] Build report generation (pass/fail per game)

## Integration

- [x] Pansy metadata import/export (via tools/json-to-pansy.py)
- [ ] Poppy project file generation from build.config.json
- [ ] GameInfo wiki sync
- [ ] Flower project schema validation in pipeline
