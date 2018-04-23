FROM centos:7

RUN yum -y install ansible \
  && yum clean all \
  && rm -rf /var/cache/yum

CMD ["ansible-playbook", "--help"]
