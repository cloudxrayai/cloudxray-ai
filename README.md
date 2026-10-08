# CloudXray AI for AI assistants

Search, compare and shortlist **FinOps and cloud cost management vendors** from the [CloudXray AI directory](https://cloudxray.ai/directory) inside Claude, ChatGPT, Cursor, VS Code and other AI tools.

This repository contains:
- **The CloudXray AI MCP server connection** (`https://cloudxray.ai/mcp`): tools to search vendors by capability, cloud, integration, pricing model and more, compare up to four vendors, find alternatives, and see recent directory changes.
- **The FinOps vendor selection skill** ([`skills/finops-vendor-selection`](skills/finops-vendor-selection/SKILL.md)): an experienced practitioner's method. Understand the situation, map needs to the FinOps Framework, shortlist, compare, and prepare demo questions, citing CloudXray AI profiles.

You need a free CloudXray AI account with a verified email. Each account gets a free monthly allowance of calls. See [cloudxray.ai/developers](https://cloudxray.ai/developers) and the [API & MCP Terms](https://cloudxray.ai/api-terms).

## Install for your tool

| Tool | How |
|---|---|
| **Claude Code** | Plugin (server + skill), below |
| **Claude** (claude.ai, desktop) | Custom connector + skill upload, below |
| **ChatGPT** | [chatgpt/](chatgpt/) |
| **Cursor** | [cursor/](cursor/) |
| **VS Code** (Copilot) | [vscode/](vscode/) |
| **Gemini CLI** | [gemini/](gemini/) (planned) |
| **Anything else that speaks MCP** | Remote server `https://cloudxray.ai/mcp` (Streamable HTTP; OAuth sign-in or `Authorization: Bearer <API key>`) |

### Claude Code

```
/plugin marketplace add cloudxrayai/cloudxray-ai
/plugin install cloudxray@cloudxray
```

Then run `/mcp`, choose **cloudxray**, and **Authenticate** to sign in with your CloudXray AI account.

Prefer an API key? Add the server yourself instead:

```
claude mcp add --transport http cloudxray https://cloudxray.ai/mcp --header "Authorization: Bearer YOUR_KEY"
```

### Claude (claude.ai and desktop)

1. **Connector:** Settings → Connectors → **Add custom connector**, URL `https://cloudxray.ai/mcp`, then Connect and sign in. (Paid Claude plans.)
2. **Skill (optional):** download `finops-vendor-selection.zip` from the [latest release](https://github.com/cloudxrayai/cloudxray-ai/releases), then in Claude go to Customize → Skills → **+** → Create skill → **Upload a skill**. Requires "Code execution and file creation" to be enabled.

## Try it

- "Shortlist Kubernetes cost tools for EKS and GKE that support FOCUS."
- "We spend about $3M a year across AWS, Azure and our VMware data centers. Compare options for allocation and chargeback, SaaS only."
- "What are alternatives to Vantage for a mid-market team?"

## Repository layout

```
skills/              the vendor-selection skill (single source; shared by every platform)
.claude-plugin/      Claude Code marketplace + plugin manifest (the repo root is the plugin)
.mcp.json            the Claude Code plugin's MCP server connection
cursor/ vscode/ chatgpt/ gemini/   per-tool setup
mcp-registry/        official MCP Registry entry (server.json)
scripts/build.sh     packages release files into dist/ (claude.ai skill zip, Cursor rule)
```

## About

[CloudXray AI](https://cloudxray.ai) is an independent FinOps research directory and advisory practice. Vendor data comes from automated research reviewed by CloudXray AI; verify important details with vendors.

License: MIT (this repository). Use of the CloudXray AI API and MCP server is subject to the [API & MCP Terms](https://cloudxray.ai/api-terms).
