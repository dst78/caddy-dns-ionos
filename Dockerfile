FROM caddy:2.10.0-builder-alpine AS builder

RUN xcaddy build  --with github.com/caddy-dns/ionos@v1.2.0

FROM caddy:2.10.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

