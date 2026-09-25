---
applyTo: "src/**/*.al"
---

# AL implementation instructions

- Keep changes aligned with existing `SDN` object names and captions
- Prefer extending existing vehicle and maintenance objects instead of duplicating them
- Keep field names, API entity names, and captions consistent with the current domain model
- Preserve current key structures unless a task explicitly requires a schema change
- When adding validation, prefer clear AL property-based constraints first, then procedural logic only when needed
- Avoid introducing breaking API changes without an explicit request
