FROM archlinux/base

RUN pacman -Syuu --noconfirm && pacman -S python2 ansible sshpass git python2-passlib python2-netaddr --noconfirm

CMD ["ansible-playbook", "--help"]
