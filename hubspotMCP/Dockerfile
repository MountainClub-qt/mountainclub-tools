FROM node:18-alpine

# Set a proper working directory
WORKDIR /app

# Install the package globally and locally
RUN npm install -g @hubspot/mcp-server && npm install @hubspot/mcp-server

# Run the binary directly, not via npx
CMD ["mcp-server", "--host", "0.0.0.0", "--port", "8080"]
