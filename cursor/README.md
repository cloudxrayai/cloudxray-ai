# CloudXray AI in Cursor

**Status: prepared, not yet tested end to end.**

## Connect the MCP server

**Option A, API key (recommended for Cursor):** create a key on your [CloudXray AI profile](https://cloudxray.ai/profile), then add [`mcp.json`](mcp.json) to `~/.cursor/mcp.json` (all projects) or `.cursor/mcp.json` (one project), replacing `YOUR_CLOUDXRAY_API_KEY`.

**Option B, sign in:** one-click install (Cursor asks you to sign in to CloudXray AI if it supports OAuth for remote servers):

`cursor://anysphere.cursor-deeplink/mcp/install?name=cloudxray&config=eyJ1cmwiOiJodHRwczovL2Nsb3VkeHJheS5haS9tY3AifQ==`

## Add the vendor-selection method (optional)

Download `cloudxray-finops-vendor-selection.mdc` from the [latest release](https://github.com/cloudxrayai/cloudxray-ai/releases) and put it in your project's `.cursor/rules/` folder. It's generated from the shared skill in [`skills/`](../skills/).
