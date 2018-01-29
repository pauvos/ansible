FROM debian:8

RUN apt-get -q update \
    && apt-get -yq install --no-install-recommends \
      build-essential \
      libffi-dev \
      libssl-dev \
      python \
      python-dev \
      python-pip \
      git \
      apt-utils \
    && apt-get clean \
    && pip install --upgrade pip

RUN pip install git+https://github.com/ansible/ansible.git@devel

CMD ["ansible-playbook", "--help"]
