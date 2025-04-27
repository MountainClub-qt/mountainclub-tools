FROM traefik:v2.10

# Copy configuration files
COPY ./config/traefik.yml /etc/traefik/traefik.yml

# Create dynamic directory (since it doesn't exist yet)
RUN mkdir -p /etc/traefik/dynamic

# Create data directory
RUN mkdir -p /data

# Expose ports
EXPOSE 80 443 8080

# Command is defined in original image