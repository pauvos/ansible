FROM centos:8

RUN dnf -y install python3-pip &&\
    dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm &&\
    dnf install -y --enablerepo epel-playground ansible

CMD ["ansible-playbook", "--help"]
