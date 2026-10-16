# Changelog

Changes to the CloudXray AI API, MCP server, skill and integrations. Versions follow the MCP server and plugin version (`mcp-registry/server.json`, `.claude-plugin/plugin.json`).

## 1.0.1 (2026-10-15)

### Accounts and terms
- Refused and failed calls are now recorded with their reason, so CloudXray AI can see and help when a connection gets stuck.
- No separate terms step for connected apps. The [API & MCP Terms](https://cloudxray.ai/api-terms) are now part of the CloudXray AI [Terms of Use](https://cloudxray.ai/terms-of-use), which you accept when you sign up.
- Accounts without that sign-up consent (created before October 15, 2026, or in some app sign-up flows) see a one-time notice with a link to the terms on their first tool call; the call then works as normal.
- API keys: if you accepted the terms at sign-up, creating a key no longer asks you to accept them again.

## 1.0.0 (2026-10-09)

First public release of programmatic access to the CloudXray AI directory of 290+ FinOps and cloud cost management vendors.

### MCP server (`https://cloudxray.ai/mcp`, Streamable HTTP)
- Seven read-only tools: `search_vendors`, `get_vendor`, `compare_vendors` (up to 4 vendors), `find_alternatives`, `list_capabilities`, `recent_changes`, `get_analysis`.
- Search filters: FinOps capability, solution category, technology scope (public cloud, SaaS, data center, data platforms, AI), cloud provider, Kubernetes platform, integrations, customer segment, deployment model (including sovereign / GovCloud), FOCUS support, pricing model, FinOps Foundation membership.
- "Build a FinOps vendor shortlist" prompt; the taxonomy as a resource.
- Sign in with a CloudXray AI account (OAuth 2.1 with PKCE; Client ID Metadata Documents supported) or use an API key. Works with Claude, ChatGPT, Cursor, VS Code, Claude Code and other MCP clients.
- Every result links to the vendor's CloudXray AI profile.

### REST API (`https://cloudxray.ai/api/v1`)
- Same capabilities as the MCP server: search, vendor profiles, alternatives, comparison, taxonomy, change feed and published analyses.
- OpenAPI description at `/api/v1/openapi.json`.

### Accounts and limits
- Free CloudXray AI account with a verified email; accept the [API & MCP Terms](https://cloudxray.ai/api-terms) once (one click).
- Free monthly allowance of calls per account; credits available for more.
- Manage API keys and connected apps on your [profile](https://cloudxray.ai/profile).

### Skill and integrations
- FinOps vendor selection skill (`skills/finops-vendor-selection`).
- Claude Code plugin (`/plugin marketplace add cloudxrayai/cloudxray-ai`), claude.ai skill package, Cursor rule, OpenAI plugin package, setup for VS Code and ChatGPT.
- Listed in the official MCP Registry as `ai.cloudxray/finops-directory`.
