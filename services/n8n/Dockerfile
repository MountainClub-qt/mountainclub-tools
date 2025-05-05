FROM n8nio/n8n:latest

# Add a network test
RUN apt-get update && apt-get install -y iputils-ping dnsutils curl

CMD sh -c "echo '--- NETWORK TEST ---' && \
           ping -c 2 8.8.8.8 && \
           ping -c 2 google.com && \
           curl -v https://jsonplaceholder.typicode.com/posts && \
           echo '--- STARTING N8N ---' && \
           n8n"
