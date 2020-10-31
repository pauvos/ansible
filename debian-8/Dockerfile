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
      curl \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss \
    && apt-get clean \
    && pip install --upgrade pip

RUN pip install git+https://github.com/ansible/ansible.git@devel

CMD ["ansible-playbook", "--help"]
