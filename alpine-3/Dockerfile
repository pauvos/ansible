FROM alpine:3.10

RUN apk add --no-cache ansible curl \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss

CMD ["ansible-playbook", "--help"]
