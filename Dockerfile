FROM caddy:builder AS builder

# deprecated
# RUN caddy-builder github.com/caddy-dns/ionos
# newer version
RUN xcaddy build  --with github.com/caddy-dns/ionos

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

