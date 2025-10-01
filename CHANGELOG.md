# Changelog

All notable changes to ktbox are documented here.  
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [0.0.1] – 2025-10-01

### Added
- Initial public release of **ktbox**.
- Modular, namespaced components:
  - `ktcolor.sty` — semantic color palettes (light + dark)
  - `ktbox.sty` — core highlight and takeaway box environments
  - `ktlrtree.sty` — taxonomy tree environments with fusion and auxiliary annotations
  - `ktorcid.sty` — ORCID utilities for author metadata
- Root-level `main.01.tex` as the primary manual and showcase document.
- Documentation build script `ktbox.build.sh`.
- Packaged archive structure compatible with CTAN (`tex/latex/ktbox`, `doc/latex/ktbox`).

### Changed
- Reorganized theme files: dropped `themes/classic/` directory in favor of a flat, namespaced package layout under `tex/latex/ktbox/`.
- Unified all components under the `kt` namespace for clarity and consistency.
- `ktlrtree` added as a dependency of `ktbox` for seamless support of taxonomy trees.

### Notes
- License: Apache 2.0 (open-source and commercial-friendly).
- Source code and documentation available at: [https://github.com/mangalbhaskar/ktbox](https://github.com/mangalbhaskar/ktbox).
- Package distributed via CTAN: [https://ctan.org/pkg/ktbox](https://ctan.org/pkg/ktbox).
