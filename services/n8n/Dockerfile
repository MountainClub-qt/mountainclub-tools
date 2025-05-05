FROM alpine:latest

RUN apk add --no-cache curl bind-tools iputils

CMD /bin/ash -c "echo '--- NETWORK TEST ---' && \
    ping -c 2 8.8.8.8 && \
    ping -c 2 google.com && \
    nslookup google.com && \
    curl -v https://jsonplaceholder.typicode.com/posts && \
    echo '--- DONE ---'"
