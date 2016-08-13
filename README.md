# ansible  [![Build Status](https://drone.chmuul.net/api/badges/aal/ansible/status.svg)](https://drone.chmuul.net/aal/ansible)

Simple docker images for running and testing ansible playbooks. I don't like obfuscated docker images with external scripts and hundreds of bells and whistles. So I created these as base images for drone builds.

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
        registry.chmuul.net/ansible:alpine-3 \
        ansible-playbook site.yml

Note: /root/.ansible must not be an overlayfs, otherwise ssh accelerate won't work.

## todo

Publish ansible images to docker hub
