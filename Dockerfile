FROM alpine:latest
RUN apk add --update curl && rm -rf /var/cache/apk/*
COPY wait.sh /
ENTRYPOINT ["sh", "/wait.sh"]