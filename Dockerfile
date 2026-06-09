FROM caddy:2.11.4-builder-alpine AS builder

RUN xcaddy build  --with github.com/caddy-dns/ionos@v1.2.0

FROM caddy:2.11.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

