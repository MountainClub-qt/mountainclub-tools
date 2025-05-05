FROM n8nio/n8n:latest

# Switch to root for installing packages
USER root

# Install tools using Alpine's apk
RUN apk add --no-cache curl bind-tools iputils

# Switch back to default non-root user for n8n
USER node

# Start n8n with network debug output
CMD sh -c "echo '--- NETWORK TEST ---' && \
           ping -c 2 8.8.8.8 && \
           ping -c 2 google.com && \
           nslookup google.com && \
           curl -v https://jsonplaceholder.typicode.com/posts && \
           echo '--- STARTING N8N ---' && \
           n8n"
