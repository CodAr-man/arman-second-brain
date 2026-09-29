---
title: "Hermes Agent Memory Solutions"
type: concept
tags: [ai-memory, hermes, agent, research]
---
# Hermes Agent Memory Solutions

Hermes agent has built-in memory management, but it struggles with consistency. This is a research comparison of 10 alternative/supplementary memory solutions:

| # | Solution | Type | URL |
|---|----------|------|-----|
| 1 | [[qmd]] | Method | https://github.com/tobi/qmd |
| 2 | [[lcm-plugin]] | Plugin (OpenClaw-inspired) | https://github.com/Martian-Engineering/lossless-claw |
| 3 | Obsidian alone | Vault-based | - |
| 4a | Obsidian + [[graphify]] | Knowledge graph | https://github.com/Graphify-Labs/graphify |
| 4b | Obsidian + RAG plugin | RAG pipeline (Smart Connections / Local LLM Hub) | - |
| 5 | [[git-context-controller]] | Git-based context | https://github.com/ImprintLab/git-context-controller |
| 6 | [[mem0]] | Memory layer | https://github.com/mem0ai/mem0 |
| 7 | Pinecone Vector | Vector DB | https://pinecone.io |
| 8 | Cerebras | Knowledge base | https://www.cerebras.ai/blog/how-we-built-our-knowledge-base |
| 9 | [[honcho]] | User context manager | https://github.com/plastic-labs/honcho |
| 10 | AI Oracle Database | Database | - |

## Status
- [ ] Research and compare all 10 solutions
- [ ] Pick the best fit for Hermes agent setup
- [ ] Implement chosen solution

## Related
- [[product-ai-objection-caller]]
