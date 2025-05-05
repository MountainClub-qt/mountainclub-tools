FROM n8nio/n8n:latest

# Install Alpine-compatible tools
RUN apk add --no-cache curl bind-tools iputils

CMD sh -c "echo '--- NETWORK TEST ---' && \
           ping -c 2 8.8.8.8 && \
           ping -c 2 google.com && \
           nslookup google.com && \
           curl -v https://jsonplaceholder.typicode.com/posts && \
           echo '--- STARTING N8N ---' && \
           n8n"
