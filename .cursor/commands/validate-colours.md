Check for malformed hex colour codes that will cause compilation errors.

```bash
grep -oE '\\hexcolour\{[^}]+\}' src/colour_selection_theory.tex | grep -vE '[0-9A-Fa-f]{6}'
```

Valid: `\hexcolour{FF9900}` (6 hex digits)
Invalid: `\hexcolour{F90}`, `\hexcolour{#FF9900}`, `\hexcolour{orange}`

Run before committing to catch colour code typos.

