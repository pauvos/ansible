# ansible  [![Build Status](https://drone.chmuul.net/api/badges/aal/ansible/status.svg)](https://drone.chmuul.net/aal/ansible)

Docker images for running and testing ansible playbooks against various operating systems.
I don't like obfuscated docker images with external scripts and hundreds of bells and whistles.

Available with four image tags:

* ubuntu-16.04
* debian-8
* fedora-24
* alpine-3

## run ansible

    docker run -it --rm \
        -w /site \
        -v /path/to/site/:/site \
        -v /path/to/ansible-user-ssh/:/root/.ssh:ro \
        --tmpfs /root/.ansible \
        chmuul/ansible:alpine-3 \
        ansible-playbook site.yml

Note: /root/.ansible must not be an overlayfs, otherwise ssh accelerate won't work.

## references

* [project on github](https://github.com/pauvos/ansible)
* [project on hub.docker.com](https://hub.docker.com/r/chmuul/ansible)
