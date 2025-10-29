All figures in this document appear inline where referenced, not at section ends.

Use `\begin{figure}[H]` (requires `float` package already loaded).

The `[H]` specifier means "place Here exactly" - no floating behavior.

Never use:
- `[ht]` or `[!t]` (allows floating)
- `[p]` (separate page)
- Missing placement specifier (default floating)

This ensures figures appear immediately after they're mentioned in the text.

