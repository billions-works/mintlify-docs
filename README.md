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

Before publishing, replace every `TODO` callout with production-specific
information.

## Authoring conventions

- Treat TypeScript as the primary SDK in shared guides and examples.
- In prose, mention TypeScript before PHP.
- In `CodeGroup` components, use this order: TypeScript, PHP, cURL.
- Keep SDK-specific details on their respective SDK pages.
