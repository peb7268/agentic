#!/bin/bash

# Suggested Setup
# 1 profile for explicity Kimi K2 usage
# 1 profile for Open Router Usage
# 1 default profile for Kilo Code default routing

# Using Kimi K2 in Kilo Code
# Note: Despite anthropic supporting images, Kimi K2 doesnt so it will error if you give it images
# Use Claude Code if you need image support or another model through the open router profile
# 1. Select Anthropic as your provider
# 2. Put in your Moonshot API Key
# 3. Change the Base URL to `https://api.moonshot.ai/anthropic`


# Firecrawl Setup
env FIRECRAWL_API_KEY=fc-0d5f94e010bf418d81f33a9bb6e8f753 npx -y firecrawl-mcp

# Browser Tools Setup
# https://github.com/AgentDeskAI/browser-tools-mcp``
# Server that runs locally and collects logs / Run this first in a new terminal
# npx @agentdeskai/browser-tools-server@latest

# MCP Server that works in vscode / Run in IDE
npx @agentdeskai/browser-tools-mcp@latest

# Context7 NPX setup
npx -y @upstash/context7-mcp@latest


# Taskmaster Setup
npm install -g task-master-ai
task-master init