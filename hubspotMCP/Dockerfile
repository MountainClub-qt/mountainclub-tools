FROM node:18-alpine

# Install MCP Server globally
RUN npm install -g @hubspot/mcp-server

# Expose the MCP port
EXPOSE 8080

# Entrypoint with process replacement so container doesn't exit
CMD ["sh", "-c", "exec npx @hubspot/mcp-server --host 0.0.0.0 --port 8080"]
