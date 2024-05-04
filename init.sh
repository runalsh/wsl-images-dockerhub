echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
mkdir -p /root/.ssh/
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIByxq8vrVcDlFlXlNUizeE/T2leMF0k6JhaXrdeUtZZj ed25519-key-20240302" >> /root/.ssh/authorized_keys
sed -i "s|^#PermitRootLogin .*|PermitRootLogin yes|g" /etc/ssh/sshd_config
sed -i "s|^#AllowAgentForwarding .*|AllowAgentForwarding yes|g" /etc/ssh/sshd_config
sed -i "s|^#AllowTcpForwarding .*|AllowTcpForwarding yes|g" /etc/ssh/sshd_config
sed -i "s|^#GatewayPorts .*|GatewayPorts yes|g" /etc/ssh/sshd_config
cat /etc/os-release
echo 'ubuntu:ubuntu' | chpasswd
echo 'root:root' | chpasswd