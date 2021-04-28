FROM golang:1.16.3-buster AS builder

WORKDIR /app
COPY . .

RUN go install -v ./...

FROM ubuntu:20.04

LABEL org.opencontainers.image.source="https://github.com/kralamoure/d1proxy"

RUN apt-get update && apt-get install -y

WORKDIR /app
COPY --from=builder /go/bin/ .

ENTRYPOINT ["./d1proxy"]
