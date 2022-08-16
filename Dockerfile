FROM golang:alpine AS builder

ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

WORKDIR /app

COPY *.go ./

RUN go mod download

RUN go build main.go

ENTRYPOINT ["./main"]