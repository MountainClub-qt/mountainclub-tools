#!/bin/bash

# Print environment for diagnostics (only showing non-sensitive vars)
echo "=== n8n Configuration ==="
echo "N8N_HOST_HEADER: $N8N_HOST_HEADER"
echo "N8N_PROTOCOL_HEADER: $N8N_PROTOCOL_HEADER"
echo "N8N_TUNNEL: $N8N_TUNNEL"
echo "N8N_TRUSTED_PROXIES: $N8N_TRUSTED_PROXIES"
echo "========================="

# Test basic connectivity
echo "Testing Webflow API connectivity..."
curl -s -o /dev/null -w "Webflow API HTTP Status: %{http_code}\n" https://api.webflow.com/ping || echo "Cannot reach Webflow API"

# Print helpful diagnostic information
echo "=== System Information ==="
echo "n8n version: $(node -e "console.log(require('/usr/local/lib/node_modules/n8n/package.json').version)")"
echo "Node.js version: $(node -v)"
echo "=========================="

# Start n8n with its standard entry point
# This will use the original n8n startup command
echo "Starting n8n..."
exec node /usr/local/lib/node_modules/n8n/bin/n8n start