Find undefined references and citations that need resolution.

```bash
grep -i 'undefined' build/colour_selection_theory.log
```

Shows:
- Missing `\label{}` targets
- Citations not in `.bib` file
- Forward references that need another compilation pass

If found after running `make`, check for typos in `\ref{}` or `\cite{}` commands in `src/colour_selection_theory.tex`.

