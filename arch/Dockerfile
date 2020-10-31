FROM archlinux/base

RUN pacman -Syuu --noconfirm && pacman -S python ansible sshpass git python-passlib python-netaddr curl --noconfirm \
    && curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss \
    && chmod +rx /usr/local/bin/goss

CMD ["ansible-playbook", "--help"]
