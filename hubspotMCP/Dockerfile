FROM node:18-alpine

# Install MCP Server globally
RUN npm install -g @hubspot/mcp-server

# Expose the default port used by MCP Server
EXPOSE 8080

# Start the MCP Server binding to 0.0.0.0 so it's reachable from outside the container
CMD ["sh", "-c", "mcp-server --host 0.0.0.0 --port 8080"]
