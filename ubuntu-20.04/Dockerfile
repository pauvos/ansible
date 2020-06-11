FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y --no-install-recommends \
      software-properties-common \
      apt-utils \
      ansible \
      python-apt \
      git-core \
      openssh-client \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
