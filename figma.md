## Most Popular Figma MCP Servers

### Top Choice: **Official Figma Dev Mode MCP Server**

The **Figma Dev Mode MCP server** is currently the most popular and widely recommended solution for integrating Figma designs with Model Context Protocol (MCP) clients, including Claude Code, Cursor, and other LLM-powered coding tools[1][2][3][4]. This server is maintained by Figma and brings design context—complete with structure, styles, and variables—directly into your coding workflow.

**Key Features:**
- Direct, structured connection to live Figma files.
- Supports real-time design-to-code workflows.
- Officially supported by Figma and recommended in the developer and LLM coding communities.

### How to Use a Figma URL with Claude Code

1. **Enable Dev Mode MCP Server in Figma:**
   - Open the Figma desktop app.
   - Go to your design file.
   - Click the menu (top left) → Preferences → "Enable Dev Mode MCP Server".
   - The local server will run at `http://127.0.0.1:3845/sse`[2][4][1].

2. **Configure Claude Code:**
   - Add the Figma MCP server to your Claude config (usually `.claude/mcp.json` or `claude_desktop_config.json`).

     ```json
     {
       "mcpServers": {
         "Figma Dev Mode MCP": {
           "type": "sse",
           "url": "http://127.0.0.1:3845/sse"
         }
       }
     }
     ```

   - Alternatively, register the server using the CLI:

     ```
     claude mcp add --transport sse figma-dev-mode-mcp-server http://127.0.0.1:3845/sse
     ```


3. **Workflow:**
   - With the server set up and running, prompt Claude Code with your design goal and include your **Figma file URL**.
   - Example prompt:
     ```
     Generate React code for this UI. [Figma URL]
     ```
   - Claude will connect via the MCP server, retrieve the design structure, and generate code based on the design you provided.

### Notable Alternatives

- **Composio Figma MCP**: A popular community solution with one-command onboarding, supports Claude Code and can be set up via npx and a special link[5][6]. Particularly praised for convenience in blog and community posts, but the official Figma server remains most widely recommended.
- **figma-developer-mcp** and **claude-figma-mcp**: Also mature open-source options, mostly used by advanced users who need custom setups, direct API key authentication, or additional feature support (like direct asset export)[7][8][9].

### Table: Quick Comparison

| MCP Server                | Official | Community Use | Claude Code Support | Setup Simplicity | API Key Needed |
|---------------------------|----------|---------------|---------------------|------------------|---------------|
| Figma Dev Mode MCP        | Yes      | Massive       | Yes                 | Easiest          | No (uses running session) |
| Composio Figma MCP        | No       | High          | Yes                 | Easy (“npx ...”) | Yes           |
| figma-developer-mcp       | No       | Medium        | Yes                 | Medium           | Yes           |
| claude-figma-mcp          | No       | Moderate      | Yes                 | Medium           | Optional      |

### Additional Notes

- To use **any** of these servers, you must have the Figma file open and be signed in, or provide a valid Figma API key if required by the MCP solution you choose.
- For most workflows—especially with Claude Code—the official Dev Mode MCP server is the default and most robust solution; just ensure your desktop app and Claude Code are updated.

You can now point Claude Code at any Figma file URL for code generation or UI recreation, provided the MCP server is active and configured[1][2][10].

[1] https://www.figma.com/blog/introducing-figmas-dev-mode-mcp-server/
[2] https://help.figma.com/hc/en-us/articles/32132100833559-Guide-to-the-Dev-Mode-MCP-Server
[3] https://www.reddit.com/r/MCPservers/comments/1l4b61w/official_figma_mcp_server_setup_and_tutorials/
[4] https://zenn.dev/pochipochitudoi/articles/d648943e6951c1
[5] https://dev.to/composiodev/from-figma-designs-to-pixel-perfect-components-using-figma-mcp-claude-code-3ao
[6] https://composio.dev/blog/how-to-use-figma-mcp-with-claude-code-to-build-pixel-perfect-designs
[7] https://github.com/GLips/Figma-Context-MCP
[8] https://github.com/tonycueva/claude-figma-mcp
[9] https://dev.to/danilo1/figma-mcp-server-guide-2a18
[10] https://zenn.dev/devtatsu/articles/figma-claude-code-mcp
[11] https://perplexity.ai
[12] https://www.pulsemcp.com/servers?q=figma
[13] https://pypi.org/project/mcp-figma/
[14] https://github.com/MCP-Mirror/TimHolden_figma-mcp-server/blob/main/README.md
[15] https://glama.ai/mcp/servers/@TimHolden/figma-mcp-server
[16] https://www.pulsemcp.com/use-cases/figma-to-code/macoughl-claude-figma
[17] https://github.com/paulvandermeijs/figma-mcp
[18] https://www.figma.com/resource-library/what-is-mcp/
[19] https://www.builder.io/blog/figma-mcp-server
[20] https://glama.ai/mcp/servers/@tonycueva/claude-figma-mcp
[21] https://www.reddit.com/r/mcp/comments/1luomse/its_been_nice_knowing_you_frontend_devs_claude/