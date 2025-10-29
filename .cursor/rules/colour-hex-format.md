The `\hexcolour{}` command displays hex colour codes with visual swatches.

Format: `\hexcolour{FF9900}` - no # symbol needed (it's added automatically).

All hex codes must be exactly 6 characters (RRGGBB format).

Example:
- ✅ `\hexcolour{FF9900}` → #FF9900 with colour box
- ❌ `\hexcolour{#FF9900}` → will cause compilation error
- ❌ `\hexcolour{F90}` → invalid (too short)

