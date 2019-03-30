FROM alpine:latest

LABEL maintainer="https://github.com/remicmacs"

COPY Dockerfile /var/docker-image-metadata/

ENTRYPOINT ["tail", "-f"]

CMD ["/var/log/nginx/access.log"]