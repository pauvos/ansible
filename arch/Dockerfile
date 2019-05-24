FROM archlinux/base

RUN pacman -Syuu --noconfirm && pacman -S python ansible sshpass git --noconfirm

CMD ["ansible-playbook", "--help"]
