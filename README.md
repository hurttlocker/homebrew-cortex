# Homebrew Tap for Cortex

[Cortex](https://github.com/hurttlocker/cortex) — import-first, observable memory layer for AI agents.

## Install

```bash
brew install hurttlocker/cortex/cortex-memory
```

Or tap first:

```bash
brew tap hurttlocker/cortex
brew install cortex-memory
```

## Upgrade

```bash
brew upgrade cortex-memory
```

## What is Cortex?

Memory that forgets — so your agent doesn't have to remember everything forever.

- **Import-first**: Point at your files, Cortex extracts structured facts
- **Ebbinghaus decay**: Facts lose confidence over time unless reinforced
- **MCP server**: `cortex mcp` — instant memory for Claude Code, Cursor, etc.
- **Observable**: Stats, stale facts, conflict detection, proactive alerts

```bash
# Import your notes
cortex import ~/notes/ --recursive --extract

# Search with hybrid retrieval (BM25 + semantic)
cortex search "what did I decide about the API design"

# Run as MCP server
cortex mcp
```

## Links

- [Cortex repo](https://github.com/hurttlocker/cortex)
- [npm package](https://www.npmjs.com/package/@cortex-ai/mcp) — `npx @cortex-ai/mcp`
