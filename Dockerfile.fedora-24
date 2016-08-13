FROM fedora:24

RUN dnf -y install \
    ansible \
    openssh-clients \
  && dnf clean all

CMD ["ansible-playbook", "--help"]
