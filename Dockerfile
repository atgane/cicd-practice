FROM alpine:latest

COPY /main .
ENTRYPOINT ["nohup", "./main", "&"]