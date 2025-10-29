Count the number of tables and figures in the document.

```bash
echo "Tables: $(grep -c '\\begin{table}' src/colour_selection_theory.tex)" && echo "Figures: $(grep -c '\\begin{figure}' src/colour_selection_theory.tex)"
```

Helps track document structure and ensure all visual elements are referenced in text.

