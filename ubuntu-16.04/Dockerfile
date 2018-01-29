FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      software-properties-common \
      apt-utils \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      ansible \
      python-apt \
      git-core \
      openssh-client \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
