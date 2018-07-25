FROM registry.hub.docker.com/library/node:8.9.1-alpine

RUN apk add --no-cache curl bash nginx && \
    apk add --update --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing moreutils

WORKDIR /usr/share/nginx/html

COPY src/index.html .

COPY nginx /etc/nginx/
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
