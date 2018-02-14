#!/bin/bash
cd ubuntu-16.04 && docker build -t lerentis/ansible:ubuntu-16.04 .
cd ../alpine-3 && docker build -t lerentis/ansible:alpine-3 .
cd ../ubuntu-14.04  && docker build -t lerentis/ansible:ubuntu-14.04 .
cd ../fedora-24 && docker build -t lerentis/ansible:fedora-24 .
cd ../debian-8 && docker build -t lerentis/ansible:debian-8 .
cd ../debian-7 && docker build -t lerentis/ansible:debian-7 .
cd ../centos-7 && docker build -t lerentis/ansible:centos-7 .
cd ../arch && docker build -t lerentis/ansible:arch .