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

The **Live production schema** navigation group reads the production
`/public/v1/swagger.json` URL at Mintlify publish time. When the backend
changes without a docs commit, trigger a new Mintlify deployment so the
generated endpoint page refreshes. The schema currently lacks per-field
descriptions, so `api/create-invoice.mdx` supplies human-readable explanations
that must be reviewed alongside backend changes. Keep the generated page in
simple (non-interactive) mode until the OpenAPI `servers` value points to the
correct absolute API host.

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
