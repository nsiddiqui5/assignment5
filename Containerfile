FROM alpine as builder
COPY data.txt /
FROM fedora as final
WORKDIR /
COPY --from=builder /data.txt .
