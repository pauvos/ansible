FROM debian:8

RUN apt-get -q update \
    && apt-get -yq install --no-install-recommends \
      build-essential \
      libffi-dev \
      libssl-dev \
      python-dev \
      python-pip \
    && apt-get autoremove \
    && apt-get clean \
    && pip install --quiet --upgrade setuptools \
    && pip install --quiet ansible

CMD ["ansible-playbook", "--help"]
