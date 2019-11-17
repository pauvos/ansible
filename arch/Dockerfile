FROM archlinux/base

RUN pacman -Syuu --noconfirm && pacman -S python ansible sshpass git python-passlib python-netaddr --noconfirm

CMD ["ansible-playbook", "--help"]
