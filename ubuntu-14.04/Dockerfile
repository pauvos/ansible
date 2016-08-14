FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      software-properties-common \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      ansible \
    && apt-get clean

CMD ["ansible-playbook", "--help"]
