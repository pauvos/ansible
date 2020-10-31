FROM fedora:24

RUN dnf -y install \
    ansible \
    openssh-clients \
    curl \
  && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
  && chmod +rx /usr/local/bin/goss \
  && dnf clean all

CMD ["ansible-playbook", "--help"]
