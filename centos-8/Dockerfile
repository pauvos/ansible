FROM centos:8

RUN dnf -y install python3-pip &&\
    dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm &&\
    dnf install -y --enablerepo epel-playground ansible curl \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss \
    && touch ~/.netrc && chmod og-rw ~/.netrc \
    && pip3 install firewall

CMD ["ansible-playbook", "--help"]
