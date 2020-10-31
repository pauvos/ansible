FROM centos:7

RUN yum -y install epel-release \
  && yum -y install ansible git curl python-firewall \
  && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
  && chmod +rx /usr/local/bin/goss \
  && yum clean headers \
  && yum clean packages

CMD ["ansible-playbook", "--help"]
