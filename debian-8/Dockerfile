FROM debian:8

RUN apt-get -q update \
    && apt-get -yq install --no-install-recommends \
      build-essential \
      libffi-dev \
      libssl-dev \
      python \
      python-dev \
      python-pip \
    && apt-get clean \
    && pip install --quiet --upgrade \
      ansible

CMD ["ansible-playbook", "--help"]
