#!/bin/bash

docker build -t registry.chmuul.net/ansible-controller:ubuntu-16.04 -f Dockerfile.ubuntu-16.04 ${@} .
docker build -t registry.chmuul.net/ansible-controller:fedora-24 -f Dockerfile.fedora-24 ${@} .

docker push registry.chmuul.net/ansible-controller:ubuntu-16.04
docker push registry.chmuul.net/ansible-controller:fedora-24
