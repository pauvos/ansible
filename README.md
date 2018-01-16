# ansible  

Docker images for running and testing ansible playbooks with various operating systems.

I don't like obfuscated Dockerfiles with external scripts and hundreds of bells and whistles, so I created these simple ones.

Available operating systems:

* alpine-3
* centos-7
* debian-8
* fedora-24
* ubuntu-16.04
* arch

## run playbooks

    docker run -it --rm \
        -w /site \
        -v /path/to/site/:/site \
        -v /path/to/ansible-user-ssh/:/root/.ssh:ro \
        --tmpfs /root/.ansible \
        chmuul/ansible:alpine-3 \
        ansible-playbook site.yml

Note: /root/.ansible must not be an overlayfs, otherwise ssh accelerate won't work.

## run tests with drone.io

    pipeline:
      build:
        image: chmuul/ansible:${OS}
        commands:
          - ansible-playbook -i tests/inventory tests/main.yml --syntax-check
          - ansible-playbook -i tests/inventory tests/main.yml

    matrix:
      OS:
        - centos-7
        - debian-8
        - fedora-24
        - ubuntu-16.04
        - arch

## run tests with travis-ci

    sudo: required

    env:
    - OS: centos-7
    - OS: debian-8
    - OS: fedora-24
    - OS: ubuntu-16.04
    - OS: arch

    services:
    - docker

    before_install:
    - docker pull chmuul/ansible:${OS}

    script:
    - docker run -t -w /site -v $(pwd):/site chmuul/ansible:${OS} ansible-playbook -i tests/inventory tests/main.yml --syntax-check
    - docker run -t -w /site -v $(pwd):/site chmuul/ansible:${OS} ansible-playbook -i tests/inventory tests/main.yml

## references

* [project on github](https://github.com/pauvos/ansible)
* [project on hub.docker.com](https://hub.docker.com/r/chmuul/ansible)
