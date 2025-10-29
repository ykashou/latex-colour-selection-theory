<div align="center">

# Colour Selection Theory

Research framework for wavelength-based colour palette generation beyond traditional sRGB projections

[![Build](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/ykashou/latex-colour-selection-theory)
[![License: ACE](https://img.shields.io/badge/License-ACE-blue.svg)](./LICENSE)
[![LaTeX](https://img.shields.io/badge/LaTeX-TeX%20Live%202025-008080.svg)](https://www.tug.org/texlive/)

[PDF](./build/colour_selection_theory.pdf) • [Documentation](./docs) • [Report Issue](https://github.com/ykashou/latex-colour-selection-theory/issues)

</div>

## 🚀 Features

- ✅ **Wavelength-First Approach** - Physics-based colour generation from spectral wavelengths
- ✅ **CIE 1931 Framework** - Rigorous colour science using CIE XYZ colour space
- ✅ **HSV Comparison** - Quantitative analysis of traditional vs. wavelength methods (ΔE₀₀)
- ✅ **Classic Colour Schemes** - Analogous, complementary, triadic, tetradic, and split-complementary
- ✅ **Vision Variants** - Dichromacy (colour-blind) and tetrachromacy simulations
- ✅ **Mathematical Formalism** - Complete mathematical development of spectral colour theory
- ✅ **Hex Code Tables** - Comprehensive palette generation with exact colour values

## 🛠 Tech Stack

- **Typesetting**: LaTeX (TeX Live 2025)
- **Engine**: pdfLaTeX
- **Bibliography**: BibTeX
- **Mathematics**: AMS packages (amsmath, amssymb, amsthm)
- **Colour Science**: CIE 1931 XYZ, sRGB transformations
- **Diagrams**: TikZ (for colour wheels and spectral diagrams)
- **Containerization**: Podman with official TeX Live image
- **Build System**: GNU Make

## 📋 Prerequisites

- **Podman** >= 4.0 (or Docker)
- **GNU Make** (usually pre-installed)
- **No LaTeX installation needed!** (uses container)

## 🚦 Quick Start

### Build Document (Recommended)

```bash
# Clone repository
git clone https://github.com/ykashou/latex-colour-selection-theory.git
cd latex-colour-selection-theory

# Build PDF
make

# View result
open build/colour_selection_theory.pdf
```

**Note**: This project uses containerized builds exclusively. No local TeX Live installation is required or supported.

## 📁 Project Structure

```
latex-colour-selection-theory/
├── src/                              # Source files
│   ├── colour_selection_theory.tex  # Main LaTeX source
│   └── colour_selection_theory.bib  # Bibliography
├── build/                            # Build artifacts (gitignored)
│   ├── colour_selection_theory.pdf  # Compiled PDF
│   └── *.aux, *.bbl, *.log          # Compilation files
├── .cursor/                          # IDE rules and commands
│   ├── rules/                        # Project guidelines
│   └── commands/                     # Helper commands
├── Makefile                          # Build automation
└── README.md
```

## 📖 Document Contents

**Title**: Wavelength-Based Colour Selection: A Spectral Approach to Palette Generation

**Abstract**: This paper presents a novel wavelength-first approach to colour palette generation that addresses the limitations of traditional HSV-based methods. By grounding colour selection in physical wavelengths and CIE 1931 colour space, we demonstrate how to generate more perceptually accurate colour schemes that reflect the true nature of light dispersion. The framework extends to dichromacy and tetrachromacy simulations, providing a unified system for palette generation across different vision models.

### Key Sections:

1. **Introduction** - Limitations of HSV angle-based colour schemes
2. **Colour Theory Foundations** - Traditional terminology (analogous, complementary, triadic)
3. **HSV Rainbow Approach** - Even-angle spacing and its issues
4. **Wavelength-Based Framework** - CIE 1931 XYZ → sRGB pipeline
5. **Comparative Analysis** - HSV vs. wavelength methods with ΔE₀₀ metrics
6. **Classic Colour Schemes** - Wavelength-based generation of all traditional schemes
7. **Dichromacy Simulations** - Protanopia, deuteranopia, and tritanopia models
8. **Tetrachromacy Extensions** - Four-cone vision simulation
9. **Implementation** - Python algorithms and hex code tables
10. **Quantitative Results** - Perceptual differences and validation
11. **Discussion** - Novelty, applications, and future work
12. **Conclusions** - Summary and research contributions

## 🎨 Core Concepts

### Traditional HSV Method

- **Seed Colour**: Bitcoin Orange (#FF9900, hue ≈ 36°)
- **Spacing**: Equal angular steps (ΔH = 360°/7 ≈ 51.43°)
- **Issue**: Equal angles ≠ equal perceptual steps
- **Complement**: Sky-blue (#0066FF)

### Wavelength-First Method

- **Seed Wavelength**: 590 nm (orange)
- **Spacing**: Physical wavelength offsets (±30 nm, ±180 nm)
- **Advantage**: Matches physical light dispersion
- **Complement**: Violet (#8A00FF)

### Perceptual Differences

- **Analogous**: ΔE₀₀ ≈ 5
- **Triadic**: ΔE₀₀ ≈ 15-20
- **Complementary**: ΔE₀₀ > 30

## 🧪 Testing

```bash
# Compile test document
make

# Check for LaTeX errors
grep "Error" colour_selection_theory.log

# Verify citations
grep "undefined" colour_selection_theory.log

# Validate colour code accuracy
grep "FF9900\|8A00FF" colour_selection_theory.tex
```

## 🐳 Containerization

### Build in Container

```bash
# Build using TeX Live container
podman run --rm -v $(pwd):/workspace:Z -w /workspace \
  docker.io/texlive/texlive:latest \
  bash -c "pdflatex colour_selection_theory.tex && \
    bibtex colour_selection_theory && \
    pdflatex colour_selection_theory.tex && \
    pdflatex colour_selection_theory.tex"
```

### Using Makefile

```bash
# Makefile uses container automatically
make
```

## 🔧 Configuration

### LaTeX Engine

Default: pdfLaTeX

### Bibliography Style

Using standard citation style for colour science references.

### Colour Packages

- `xcolor` for hex colour definitions
- `colortbl` for colour tables
- Custom colour definitions for all hex codes

## 🎨 Customization

### Modifying Content

1. Edit `colour_selection_theory.tex`
2. Update bibliography in `.bib` file
3. Rebuild: `make`
4. View updated PDF

### Adding Colour Schemes

```latex
% Define new wavelength-based scheme
\definecolor{orange}{HTML}{FF9900}
\definecolor{violet}{HTML}{8A00FF}
```

### Colour Science Notation

Custom commands for colour transformations:
- Wavelength λ (380-750 nm visible range)
- CIE XYZ tristimulus values
- sRGB transformations
- CIEDE2000 ΔE₀₀ metrics

## 🔬 Research Contributions

### Novel Aspects

1. **Unified Pipeline**: Seed colour → wavelength → spectral offset → XYZ → sRGB
2. **Vision Model Extensions**: Dichromacy and tetrachromacy support
3. **Quantitative Validation**: ΔE₀₀ comparison between methods
4. **Comprehensive Tables**: Hex codes for all scheme variants

### What Exists

- CIE 1931 colour space (1931)
- HSV palette generators (widespread)
- Dichromacy simulators (accessibility tools)
- Tetrachromacy research (academic)

### Missing Piece (Our Contribution)

No publicly documented tool that:
- Maps seed colours to nearest wavelengths
- Applies spectral offsets for classic schemes
- Converts back to sRGB with vision model support
- Provides reproducible, physics-grounded palettes

## 🚀 Deployment

### Release PDF

```bash
# Build final version
make clean
make

# PDF is ready
```

### GitHub Release

```bash
# Tag version
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0

# Upload PDF to GitHub Releases
gh release create v1.0.0 build/colour_selection_theory.pdf
```

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/new-scheme`)
3. Make changes to `.tex` file
4. Ensure document compiles: `make`
5. Commit changes (`git commit -m 'docs: add new colour scheme'`)
6. Push to branch (`git push origin feature/new-scheme`)
7. Open Pull Request

### Contribution Ideas

- Additional colour scheme variants
- More vision model simulations
- Extended wavelength ranges (UV/IR)
- Perceptual uniformity analysis
- Application case studies

## 📄 License

This project is licensed under the ACE License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- CIE (Commission Internationale de l'Éclairage) for colour space standards
- Colour science research community
- HSV/HSL colour model developers
- Accessibility and colour-blind simulation research
- Tetrachromacy research pioneers
- LaTeX community for excellent typesetting tools

## 📚 Key References

- CIE 1931 colour space specification
- CIEDE2000 colour difference formula
- Wavelength to XYZ conversion tables
- Dichromacy simulation algorithms
- Tetrachromacy cone response models

## 📧 Contact

- **Author**: Yanal the Mage
- **Repository**: https://github.com/ykashou/latex-colour-selection-theory
- **Issues**: https://github.com/ykashou/latex-colour-selection-theory/issues

## 📊 Repository Stats

![Repobeats](https://repobeats.axiom.co/api/embed/latex-colour-selection-theory.svg "Repobeats analytics image")

## ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=ykashou/latex-colour-selection-theory&type=Date)](https://star-history.com/#ykashou/latex-colour-selection-theory&Date)

---

<div align="center">
Made with ❤️ by <a href="https://github.com/ykashou">Yanal the Mage</a>
</div>

