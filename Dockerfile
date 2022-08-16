FROM golang:alpine3.16

COPY . .
RUN go build main.go
ENTRYPOINT ["nohup", "./main", "&"]