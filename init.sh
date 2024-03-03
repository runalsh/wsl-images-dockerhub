# sysctl should be AFTER DOCKER INSTALLATION else it will fail
# echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
# echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
# sysctl -p
mkdir -p /root/.ssh/
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIByxq8vrVcDlFlXlNUizeE/T2leMF0k6JhaXrdeUtZZj ed25519-key-20240302" >> /root/.ssh/authorized_keys
#sed -ie '0,/#PermitRootLogin prohibit-password/s/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
