# ansible  

Docker images for running and testing ansible playbooks against various operating systems.
I don't like obfuscated docker images with external scripts and hundreds of bells and whistles.

Available operating systems:

* alpine-3
* centos-7
* debian-8
* fedora-24
* ubuntu-16.04

## run ansible as controller

    docker run -it --rm \
        -w /site \
        -v /path/to/site/:/site \
        -v /path/to/ansible-user-ssh/:/root/.ssh:ro \
        --tmpfs /root/.ansible \
        chmuul/ansible:alpine-3 \
        ansible-playbook site.yml

Note: /root/.ansible must not be an overlayfs, otherwise ssh accelerate won't work.

## use ansible in drone builds

    build:
      image: chmuul/ansible:$$OS
      pull: true
      commands:
        - ansible-playbook -i tests/inventory tests/main.yml --syntax-check
        - ansible-playbook -i tests/inventory tests/main.yml

    matrix:
      OS:
        - ubuntu-16.04
        - fedora-24
        - debian-8


## references

* [project on github](https://github.com/pauvos/ansible)
* [project on hub.docker.com](https://hub.docker.com/r/chmuul/ansible)
