Completely clean and rebuild the document from scratch.

```bash
make distclean && make
```

This removes ALL generated files including the PDF, then rebuilds.

Useful when:
- Citations aren't resolving correctly
- References show as "??"
- You've made structural changes
- Debugging mysterious compilation issues

