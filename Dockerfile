FROM caddy:builder AS builder

RUN caddy-builder \
  github.com/caddy-dns/ionos

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

