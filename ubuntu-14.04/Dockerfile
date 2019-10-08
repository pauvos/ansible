FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      software-properties-common \
      apt-utils \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      ansible \
      git \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
