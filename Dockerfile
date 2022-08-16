FROM golang:1.18.5-alpine3.16

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build .

EXPOSE 8080

CMD [ "/main" ]