This project uses containerized builds exclusively via Podman. No local TeX Live installation is required or supported.

Use `make` to compile the document. Never suggest direct `pdflatex` commands.

The Makefile runs:
1. pdflatex (first pass)
2. bibtex (resolve citations)
3. pdflatex (second pass - resolve references)
4. pdflatex (third pass - finalize)

