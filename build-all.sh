#!/bin/bash
cd ubuntu-18.04 && docker buildx build -t lerentis/ansible:ubuntu-18.04 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../ubuntu-16.04 && docker buildx build -t lerentis/ansible:ubuntu-16.04 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../alpine-3 && docker buildx build -t lerentis/ansible:alpine-3 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../ubuntu-14.04  && docker buildx build -t lerentis/ansible:ubuntu-14.04 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../fedora-24 && docker buildx build -t lerentis/ansible:fedora-24 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../debian-8 && docker buildx build -t lerentis/ansible:debian-8 --platform=linux/arm,linux/amd64 . --push
cd ../debian-7 && docker buildx build -t lerentis/ansible:debian-7 --platform=linux/arm,linux/amd64 . --push
cd ../centos-7 && docker buildx build -t lerentis/ansible:centos-7 --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd ../arch && docker buildx build -t lerentis/ansible:arch --platform=linux/arm,linux/arm64,linux/amd64 . --push
