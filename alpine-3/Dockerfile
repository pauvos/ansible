FROM alpine:3.4

RUN apk add --no-cache ansible py-pip \
  && pip install docker-py

CMD ["ansible-playbook", "--help"]
