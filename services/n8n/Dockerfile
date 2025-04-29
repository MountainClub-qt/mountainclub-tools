FROM n8nio/n8n:latest

# No environment variables here - they're all managed in Sliplane

# Add basic troubleshooting tools
RUN apt-get update && \
    apt-get install -y curl iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy our startup script for diagnostics
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

# Expose the n8n port
EXPOSE 5678

# Use our custom startup script
ENTRYPOINT ["/startup.sh"]