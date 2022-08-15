FROM alpine:latest

COPY /home/runner/work/cicd-practice/cicd-practice/main .
ENTRYPOINT ["nohup", "./main", "&"]