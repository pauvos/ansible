FROM archlinux/base

RUN echo "[archlinuxfr]" >> /etc/pacman.conf && \
	echo "SigLevel = Never" >> /etc/pacman.conf && \
	echo "Server = http://repo.archlinux.fr/x86_64" >> /etc/pacman.conf

RUN pacman -Syuu --noconfirm && pacman -S yaourt ansible sshpass python2-passlib python2-netaddr python2-pywinrm python2-dnspython python2-ovirt-engine-sdk python2-jmespath python2-requests-ntlm python2-requests-kerberos python2-requests-credssp git --noconfirm

RUN rm /usr/bin/python && ln -s /usr/bin/python2.7 /usr/bin/python

CMD ["ansible-playbook", "--help"]
