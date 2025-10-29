Display the PDF file size and total page count.

```bash
ls -lh build/colour_selection_theory.pdf && pdfinfo build/colour_selection_theory.pdf | grep Pages
```

Useful for:
- Tracking document length for journal requirements
- Monitoring file size after adding figures
- Verifying compilation succeeded

Current document: ~39 pages, ~680KB

