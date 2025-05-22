FROM node:18-alpine

# Install MCP Server globally
RUN npm install -g @hubspot/mcp-server

# Expose the default port used by MCP Server
EXPOSE 8080

# Use node directly to ensure the process stays alive
CMD ["node", "/usr/local/lib/node_modules/@hubspot/mcp-server/dist/index.js", "--host", "0.0.0.0", "--port", "8080"]
