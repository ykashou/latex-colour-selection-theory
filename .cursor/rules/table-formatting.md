Tables use the `booktabs` package for professional formatting.

Structure:
```latex
\begin{table}[H]
\centering
\caption{Descriptive title}
\label{tab:identifier}
\begin{tabular}{lcc}
\toprule
Header 1 & Header 2 & Header 3 \\
\midrule
Row 1 & Data & Data \\
Row 2 & Data & Data \\
\bottomrule
\end{tabular}
\end{table}
```

Never use `\hline` or double lines. Use `\cmidrule{2-3}` for partial rules spanning columns 2-3.

Caption and label go before the tabular environment.

