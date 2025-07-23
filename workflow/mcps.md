# MCP Servers Configuration

## Current MCP Servers

### 1. Firecrawl
- **Purpose**: Web scraping and data extraction
- **Command**: `npx -y firecrawl-mcp`
- **Environment**: Requires `FIRECRAWL_API_KEY`

#### Firecrawl Examples:

**Single Page Scraping:**
```
"Scrape the content from https://docs.python.org/3/tutorial/ and extract the main sections"
```

**Search Functionality:**
```
"Search for 'React hooks best practices' and get the top 5 results with summaries"
"Find recent articles about 'TypeScript performance optimization'"
```

**Batch Crawling:**
```
"Crawl all documentation pages from https://nextjs.org/docs starting from the getting-started section"
"Extract product information from an e-commerce category page including prices and descriptions"
```

**Structured Data Extraction:**
```
"Scrape job listings from a careers page and format as JSON with title, location, salary, requirements"
"Extract contact information from company About pages including emails, phone numbers, addresses"
```

**Content Analysis:**
```
"Analyze competitor pricing pages and create a comparison table"
"Extract changelog information from software documentation sites"
```

### 2. Browser Tools
- **Purpose**: Browser automation and debugging
- **Command**: `npx @agentdeskai/browser-tools-mcp@latest`
- **Environment**: No additional keys required

#### Browser Tools Examples:

**UI Testing & Screenshots:**
```
"Take a screenshot of the homepage at https://example.com"
"Navigate to the login page and take a screenshot of the form validation errors"
"Capture screenshots of the responsive design at different screen sizes"
```

**Form Automation:**
```
"Fill out the contact form on the website with test data and submit it"
"Test the checkout process by adding items to cart and proceeding to payment"
"Automate user registration with multiple test accounts"
```

**Element Interaction:**
```
"Click on all navigation menu items and verify each page loads correctly"
"Test dropdown menus and modal dialogs for proper functionality"
"Scroll through infinite scroll pages and capture content at different positions"
```

**Performance Testing:**
```
"Measure page load times for the main pages of the website"
"Test website functionality with slow network conditions"
"Monitor JavaScript errors and console warnings during navigation"
```

**Cross-Browser Testing:**
```
"Test the application in different browsers and report compatibility issues"
"Verify mobile responsiveness by testing on various device viewports"
"Check for accessibility issues using browser dev tools"
```

### 3. Context7
- **Purpose**: Context-aware code assistance
- **Command**: `npx -y @upstash/context7-mcp@latest`
- **Environment**: No additional keys required

#### Context7 Examples:

**Code Analysis & Refactoring:**
```
"Analyze this React component for performance issues and suggest optimizations"
"Review this API endpoint code for security vulnerabilities"
"Suggest improvements for this database query to reduce load time"
```

**Architecture Guidance:**
```
"Recommend the best project structure for a Next.js e-commerce application"
"Suggest design patterns for handling state management in a large React app"
"Provide guidance on microservices architecture for this Node.js backend"
```

**Code Generation with Context:**
```
"Generate a TypeScript interface based on this API response structure"
"Create unit tests for this function considering edge cases and error handling"
"Generate documentation comments for this complex algorithm"
```

**Debugging Assistance:**
```
"Help identify why this async function is not working as expected"
"Analyze this error stack trace and suggest potential fixes"
"Review this code for memory leaks and performance bottlenecks"
```

**Best Practices & Standards:**
```
"Ensure this code follows our established coding standards and conventions"
"Suggest improvements to make this code more maintainable and readable"
"Recommend security best practices for this authentication implementation"
```

## Workflow Integration

These MCP servers enable powerful agentic workflows:

1. **Web Research → Code Generation**: Use Firecrawl to extract information from documentation/examples, then generate code
2. **UI Testing & Validation**: Use Browser Tools to test generated interfaces and validate functionality  
3. **Code Enhancement**: Use Context7 for intelligent code improvements and suggestions

## Security Notes

- API keys are stored in environment variables
- Firecrawl API key is currently configured (ensure it's moved to environment variables for production)
- No sensitive data should be committed to version control