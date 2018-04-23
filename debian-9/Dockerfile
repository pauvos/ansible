FROM debian:9

RUN apt-get -q update \
    && apt-get -yq --no-install-recommends install \
      python-pip \
    && apt-get autoremove \
    && apt-get clean \
    && pip install --quiet --upgrade setuptools \
    && pip install --quiet ansible

CMD ["ansible-playbook", "--help"]