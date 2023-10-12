FROM caddy:builder AS builder

RUN xcaddy build  --with github.com/caddy-dns/ionos@v1.0.1

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

