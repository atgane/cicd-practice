FROM golang:alpine3.16

COPY . .
ENTRYPOINT ["./main"]