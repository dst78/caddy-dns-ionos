FROM caddy:2.8.1-builder-alpine AS builder

RUN xcaddy build  --with github.com/caddy-dns/ionos@v1.0.1

FROM caddy:2.8.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

