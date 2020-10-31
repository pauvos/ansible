FROM debian:9

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
      gnupg \
      dirmngr \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss \
    && pip3 install --upgrade pip

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
    && apt-get -q update \
    && apt-get install -yq ansible \
    && apt-get clean 

CMD ["ansible-playbook", "--help"]
