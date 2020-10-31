FROM ubuntu:20.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      software-properties-common \
      apt-utils \
      ansible \
      python-apt \
      git-core \
      openssh-client \
      curl \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
