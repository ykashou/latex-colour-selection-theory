TikZ requires colour definitions before use within each environment.

Always define colours explicitly:
```latex
\definecolor{myred}{HTML}{FF0000}
\draw[fill=myred] (0,0) rectangle (1,1);
```

Undefined colour names cause compilation errors.

For reused colours across figures, define them in the preamble or at the start of each TikZ environment.

