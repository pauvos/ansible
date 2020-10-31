FROM debian:10

RUN apt-get -q update \
    && apt-get -yq install --no-install-recommends \
      build-essential \
      libffi-dev \
      libssl-dev \
      python3 \
      python3-dev \
      python3-pip \
      git \
      apt-utils \
      curl \
      ansible \
      python \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss \
    && apt-get clean 


CMD ["ansible-playbook", "--help"]
