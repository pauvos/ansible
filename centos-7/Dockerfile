FROM centos:7

RUN rpm -iU https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm \
  && yum -y install ansible

CMD ["ansible-playbook", "--help"]
