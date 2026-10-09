# CloudXray AI in ChatGPT

ChatGPT connects to the CloudXray AI MCP server directly; there is no plugin file to install.

1. In ChatGPT, open **Settings → Apps & Connectors**. If custom connectors aren't offered, turn on **Developer mode** (under Advanced). Availability depends on your ChatGPT plan.
2. Create a connector with the URL `https://cloudxray.ai/mcp`, choose **OAuth** if asked, and connect.
3. Sign in with your CloudXray AI account and approve access.

ChatGPT identifies itself to CloudXray AI with a Client ID Metadata Document, which CloudXray AI supports.

## Codex (ChatGPT desktop app and CLI)

Add the server in `~/.codex/config.toml`, limiting the sign-in to the scopes CloudXray AI uses:

```toml
[mcp_servers.cloudxray]
url = "https://cloudxray.ai/mcp"
scopes = ["openid", "profile", "email", "offline_access"]
```

Then sign in: `codex mcp login cloudxray` (in the desktop app, the CLI is at `/Applications/ChatGPT.app/Contents/Resources/codex`). Restart the app afterwards. To use an API key instead, set `bearer_token_env_var = "CLOUDXRAY_API_KEY"` and put the key in that environment variable.

## OpenAI plugin directory listing

The upload package is built by `scripts/build.sh` as `dist/openai/cloudxray-openai-plugin.zip`: a `cloudxray/` folder with `.codex-plugin/plugin.json` (from [`codex-plugin.json`](codex-plugin.json)) and the shared `skills/`. The MCP server (`https://cloudxray.ai/mcp`, OAuth) is entered in the OpenAI portal; it isn't part of the package. Keep `version` in `codex-plugin.json` in step with `.claude-plugin/plugin.json`.
