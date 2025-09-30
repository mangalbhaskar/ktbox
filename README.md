# ktbox — A Modular LaTeX Framework for Semantic Color, Structured Highlighting, and Scholarly Communication

**ktbox** is a modular LaTeX framework for semantic color palettes, structured highlight boxes, and ORCID-linked author utilities.  
It improves clarity, portability, and reproducibility across articles, conference papers, posters, and presentations.

- Highlight boxes: `ktbox`, `ktboxnumbered`, `ktboxwide`
- Semantic color palettes (light & dark) via `ktcolor`
- ORCID helpers via `ktorcid`
- Clean separation of structure (boxes), color (palettes), and metadata (ORCID)
- Works with common classes: `article`, `IEEEtran`, `acmart`, `beamer`, etc.


## Installation

### TeX Live / MiKTeX (after CTAN release)

```tex
\usepackage{ktbox}    % loads semantic colors and highlight boxes
\usepackage{ktorcid}  % optional, for ORCID icons/links
````

### Manual (from this repo)

Copy `ktbox.sty`, `ktcolor.sty`, and `ktorcid.sty` into your project folder or local texmf tree. Then:

```tex
\usepackage{ktbox}
\usepackage{ktorcid}
```

## Quick Start

```tex
\documentclass{article}
\usepackage{ktbox}     % provides ktbox, ktboxnumbered, ktboxwide
\usepackage{ktorcid}   % optional

\begin{document}

\begin{ktbox}[title={Key Insight}, theme=blue]
This is a highlighted message.
\end{ktbox}

\begin{ktboxnumbered}{Takeaway}
This takeaway is auto-numbered.
\end{ktboxnumbered}

Author: Bhaskar Mangal\orcidicon{0000-0002-8126-3528}

\end{document}
```

More usage notes and examples are in the manual: `doc/ktbox.pdf`
(available via `texdoc ktbox` once installed).


## Source Layout

```
ktbox-<version>/
├── ktbox.sty
├── ktcolor.sty
├── ktorcid.sty
├── doc/
│   └── ktbox.pdf       ← user manual (texdoc ktbox)
├── README.md
├── CHANGELOG.md
├── LICENSE
└── NOTICE
```


## Building the Documentation Locally

The repo includes a helper script:

```bash
bash ktbox.build.sh
```

This compiles `doc/ktbox.tex` into `doc/ktbox.pdf` using `latexmk`.

If building manually, ensure TeX can find the `.sty` files:

```bash
TEXINPUTS=./: latexmk -pdf -interaction=nonstopmode doc/ktbox.tex
```

## Maintainer

Bhaskar Mangal — [mangal@mapmyindia.com](mailto:mangal@mapmyindia.com)


## License

Apache License 2.0 (open-source and commercial-friendly). See `LICENSE`.
Attributions and sponsor acknowledgments are listed in `NOTICE`.


## Acknowledgment

Supported by C.E. Info Systems Ltd. (MapmyIndia) under the Ph.D. IMPACT programme.
