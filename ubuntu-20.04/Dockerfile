FROM ubuntu:20.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      software-properties-common \
      apt-utils \
      ansible \
      python-apt \
      git-core \
      openssh-client \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
