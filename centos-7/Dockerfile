FROM centos:7

RUN yum -y install epel-release \
  && yum -y install ansible git \
  && yum clean headers \
  && yum clean packages

CMD ["ansible-playbook", "--help"]
