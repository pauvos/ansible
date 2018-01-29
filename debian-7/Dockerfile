FROM debian:7

RUN apt-get -q update \
    && apt-get install -y python-pip python-dev git apt-utils

RUN pip install --index-url=https://pypi.python.org/simple/ --upgrade pip

RUN pip install git+https://github.com/ansible/ansible.git@devel

CMD ["ansible-playbook", "--help"]
