FROM archlinux/base

RUN pacman -Syuu --noconfirm && pacman -S ansible sshpass python2-passlib python2-netaddr python2-pywinrm python2-dnspython python2-ovirt-engine-sdk python2-jmespath python2-requests-ntlm python2-requests-kerberos python2-requests-credssp --noconfirm

CMD ["ansible-playbook", "--help"]
