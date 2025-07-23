# MCP Integration Guidelines

## MCP Server Configuration
- Store MCP configurations in `mcp_config.json` at project root
- Use environment variables for sensitive data (API keys, tokens)
- Document required environment variables in `.env.example`
- Test MCP servers before committing configurations

## Available MCP Servers
- **Firecrawl**: Web scraping and data extraction
- **Browser Tools**: Browser automation and debugging
- **Context7**: Context-aware code assistance

## Environment Setup
1. Copy `mcp_config.json` to your global Kilo Code settings
2. Set required environment variables
3. Install dependencies with `npm install` if needed
4. Test each MCP server individually

## Security Best Practices
- Never commit API keys to version control
- Use `.env` files for local development
- Document required environment variables
- Rotate API keys regularly