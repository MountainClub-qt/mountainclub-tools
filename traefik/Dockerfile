FROM traefik:v2.10
COPY ./config/traefik.yml /etc/traefik/traefik.yml
COPY ./config/dynamic/ /etc/traefik/dynamic/
VOLUME ["/data"]
CMD ["--api.dashboard=true", "--providers.docker.endpoint=unix:///var/run/docker.sock"]