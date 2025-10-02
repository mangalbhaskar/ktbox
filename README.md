# KTBox: A Modular LaTeX Framework for Semantic Color, Structured Highlighting, and Scholarly Communication

**ktbox** is a modular LaTeX framework for semantic color palettes, structured highlight boxes, taxonomy tree visualizations, and ORCID-linked author utilities.  
It improves clarity, portability, and reproducibility across articles, conference papers, posters, and presentations.

- Highlight boxes: `ktbox`, `ktboxnumbered`, `ktboxwide`
- Semantic color palettes (light & dark) via `ktcolor`
- Taxonomy tree environments via `ktlrtree` (left-to-right trees, unified arrow trees, and fusion diagrams)
- ORCID helpers via `ktorcid` (optional)
- Clean separation of structure (boxes), color (palettes), metadata (ORCID), and diagrams (trees)
- Works with common classes: `article`, `IEEEtran`, `acmart`, `beamer`, etc.

📦 Available on CTAN: [ktbox](https://ctan.org/pkg/ktbox)  
💻 Source code: [GitHub Repository](https://github.com/mangalbhaskar/ktbox)


## Installation

### TeX Live / MiKTeX (after CTAN release)

```tex
\usepackage{ktbox}     % loads semantic colors, highlight boxes, and taxonomy trees
\usepackage{ktorcid}   % optional, for ORCID icons/links
````

### Manual (from this repo)

Copy the `.sty` files into your project folder or local texmf tree. Then:

```tex
\usepackage{ktbox}     % already includes ktcolor + ktlrtree
\usepackage{ktorcid}   % only needed for ORCID integration
```

## Quick Start

```tex
\documentclass{article}
\usepackage{ktbox}     % provides ktbox, ktboxnumbered, ktboxwide, taxonomy trees
\usepackage{ktorcid}   % optional

\title{KTBox Example}
\author{Bhaskar Mangal\orcidicon{0000-0002-8126-3528}}
\date{}  % suppress date

\begin{document}
\maketitle

\begin{ktbox}[title={Key Insight}, theme=blue]
This is a highlighted message.
\end{ktbox}

\begin{ktboxnumbered}{Takeaway}
This takeaway is auto-numbered.
\end{ktboxnumbered}

\begin{forest} ktlrtree-arrow-unified
  [\ktwrapboxs{Taxonomy Root}, fill=ktred-bg
    [\ktwrapboxm{Branch A}, fill=ktgreen-bg]
    [\ktwrapboxm{Branch B}, fill=ktblue-bg]
  ]
\end{forest}

\end{document}
```

## Source Layout

```
ktbox-<version>/
├── ktbox.sty
├── ktcolor.sty
├── ktlrtree.sty
├── ktorcid.sty
├── README.md
├── CHANGELOG.md
├── LICENSE
└── NOTICE
```

## Building the Documentation Locally

The repo includes a helper script:

```bash
## for CTAN
bash ktbox.build.sh ktbox.tex
```

This compiles the LaTeX manual into a PDF using `latexmk`.

If building manually, ensure TeX can find the `.sty` files:

```bash
TEXINPUTS=./: latexmk -pdf -interaction=nonstopmode ktbox.tex
```

## Maintainer

Bhaskar Mangal — [mangal@mapmyindia.com](mailto:mangal@mapmyindia.com)

## License

Apache License 2.0 (open-source and commercial-friendly). See `LICENSE`.
Attributions and sponsor acknowledgments are listed in `NOTICE`.

## Acknowledgment

This work was supported by C.E. Info Systems Ltd. (MapmyIndia) under the Industry Mentored Ph.D. in Advanced and Cutting-edge Technologies (PhD IMPACT) programme. The present contribution does not make use of proprietary code, data, or content from MapmyIndia. Instead, it extends auxiliary outcomes of the primary research activities, with the developed artifacts being released to the scientific community for broader use in scholarly communication.
