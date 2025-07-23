# Project Structure Guidelines

## Directory Structure
```
project-root/
├── .kilocode/                 # Kilo Code configuration
│   ├── rules/                 # Coding rules and standards
│   ├── settings/              # Environment-specific settings
│   └── templates/             # File templates
├── src/                       # Source code
├── tests/                     # Test files
├── docs/                      # Documentation
├── config/                    # Configuration files
├── scripts/                   # Build/utility scripts
└── README.md                  # Project documentation
```

## File Naming Conventions
- Use kebab-case for file names: `my-file-name.js`
- Use PascalCase for React components: `MyComponent.jsx`
- Use lowercase with underscores for config: `config_file.json`
- Use descriptive names that indicate purpose

## Code Organization
- Group related functionality into modules
- Separate concerns (UI, business logic, data access)
- Use index files for clean exports
- Keep configuration separate from code

## Environment Management
- Use `.env` files for local development
- Store secrets in environment variables
- Use different configs for dev/staging/prod
- Document all required environment variables