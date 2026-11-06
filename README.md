# Billions documentation

Mintlify documentation for integrating Billions payments into applications and
online stores.

## Local preview

```bash
npx mint dev
```

The documentation is then available at `http://localhost:3000`.

## Structure

- `index.mdx` — introduction and entry point
- `integration/` — the end-to-end integration guide
- `examples/` — task-oriented examples
- `sdks/` — SDK guides
- `store-integrations/` — ecommerce platform integrations

## OpenAPI reference

The checked-in production schema snapshot is at `openapi/public-v1.json`.
Refresh it before publishing API changes:

```powershell
./scripts/sync-openapi.ps1
```

The script downloads and validates the current production Swagger JSON. Commit
the updated snapshot together with documentation changes. The published API
guide is maintained in MDX and links to the live Swagger UI and JSON.
Mintlify's OpenAPI navigation integration failed to fetch both the remote URL
and the checked-in snapshot in this project, so do not re-enable that group
without verifying a successful deployment first.

`developer/ai-integration-checklist.mdx` is intentionally omitted from
`docs.json` navigation. `seo.indexing: "all"` includes this page in the
automatically generated `llms-full.txt`, which is the only URL in the AI
integration prompt. The page is still publicly accessible by direct URL.

Before publishing, replace every `TODO` callout with production-specific
information.

## Authoring conventions

- Treat TypeScript as the primary SDK in shared guides and examples.
- In prose, mention TypeScript before Python and PHP.
- In `CodeGroup` components, use this order: TypeScript, Python, PHP, cURL.
- Keep SDK-specific details on their respective SDK pages.
