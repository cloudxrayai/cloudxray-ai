# CloudXray AI in VS Code (GitHub Copilot agent mode)

**Status: prepared, not yet tested end to end.**

Add the server from a terminal:

```
code --add-mcp '{"name":"cloudxray","type":"http","url":"https://cloudxray.ai/mcp"}'
```

or add [`mcp.json`](mcp.json) to your workspace's `.vscode/mcp.json`. VS Code asks you to sign in to CloudXray AI the first time a tool runs. To use an API key instead, add `"headers": { "Authorization": "Bearer YOUR_CLOUDXRAY_API_KEY" }` to the server entry.
