# Kilo Code Configuration

This directory contains the configuration and rules for Kilo Code, following best practices for consistent development across projects.

## Directory Structure

```
.kilocode/
├── rules/                     # Coding rules and standards
│   ├── coding-standards.md    # General coding principles
│   ├── project-structure.md   # Project organization guidelines
│   └── mcp-integration.md     # MCP server configuration
├── settings/                  # Environment-specific settings
│   └── vscode-settings.json   # VS Code workspace settings
├── templates/                 # File templates
│   ├── README-template.md     # Standard README template
│   └── env-template.env       # Environment variables template
└── README.md                  # This documentation
```

## Usage

1. **Rules**: Follow the guidelines in the `rules/` directory for consistent code style and project structure
2. **Settings**: Use the VS Code settings as a starting point for your workspace configuration
3. **Templates**: Copy templates from the `templates/` directory when creating new projects

## MCP Configuration

Global MCP servers to be used accross all projects should be added to:
`~/Library/Application Support/Code/User/globalStorage/kilocode.kilo-code/settings/mcp_settings.json`. 

Note: This will be independed on each users system. 

The `mcp_config.json` file in the project root contains the MCP server configurations for:
- Firecrawl (web scraping)
- Browser Tools (automation)
- Context7 (code assistance)

Any time new MCP servers are added, they should automatically get updated in this documentation.

## Getting Started

1. Copy the appropriate templates to your project
2. Set up environment variables using the `.env` template
3. Configure MCP servers as needed
4. Follow the coding standards and project structure guidelines

## Customization

Feel free to modify these configurations to match your team's specific needs. The templates are designed to be starting points that can be customized per project.