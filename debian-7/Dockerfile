FROM debian:7

RUN apt-get -q update \
    && apt-get install -y python-pip python-dev git apt-utils curl \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss

RUN pip install --index-url=https://pypi.python.org/simple/ --upgrade pip

RUN pip install git+https://github.com/ansible/ansible.git@devel

CMD ["ansible-playbook", "--help"]
