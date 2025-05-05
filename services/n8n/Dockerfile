FROM n8nio/n8n:latest

# Switch to root user to install tools
USER root

# Install networking/debug tools for Alpine Linux
RUN apk add --no-cache curl bind-tools iputils

# Switch back to default user for n8n
USER node

# Startup command to test networking, then launch n8n
CMD /bin/ash -c "echo '--- NETWORK TEST ---' && \
    ping -c 2 8.8.8.8 && \
    ping -c 2 google.com && \
    nslookup google.com && \
    curl -v https://jsonplaceholder.typicode.com/posts && \
    echo '--- STARTING N8N ---' && \
    n8n"
