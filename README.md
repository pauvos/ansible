# ansible  [![Build Status](https://drone.chmuul.net/api/badges/aal/ansible/status.svg)](https://drone.chmuul.net/aal/ansible)

A docker image for running ansible playbooks

Available in two flavours:

* registry.chmuul.net/ansible-controller:ubuntu-16.04
* registry.chmuul.net/ansible-controller:fedora-24
* registry.chmuul.net/ansible-controller:alpine-3

## run ansible-controller

    docker run -it --rm \
        -v /path/to/site/:/site \
        -v /path/to/ansible-user-ssh/:/root/.ssh:ro \
        --tmpfs /root/.ansible \
        registry.chmuul.net/ansible-controller:ubuntu-16.04 \
        ansible-playbook site.yml
