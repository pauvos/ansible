# ansible-controller

A fedora-based docker image for running ansible playbooks

## Build the image

    docker build -t aal/ansible-controller .

## Run ansible-controller

    docker run -it --rm \
        -v /path/to/site/:/site \
        -v /path/to/ansible-user-ssh/:/root/.ssh:ro \
        --tmpfs /root/.ansible \
        aal/ansible-controller \
        ansible-playbook site.yml

