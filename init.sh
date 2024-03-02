echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf
mkdir -p /root/.ssh/
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAr53uTiK0O/sbacgMcsHGp2mL0XvjpxI9O6n2KOPduFbmwKF/ZxLZm6nR1K6Dkj5aeg+BEFft1lrkh08ubJCYkF7/5vXy5dlzlLokCwc3aEOIIxD2WsOaFizmiy/b3KE16bvpkM7WzydlW6LyTaF3BoAikiw5D5IibroSij2mFWGVieXxXJSyryu+xmsNqGywuKc+4DjoaqEJJooBU53OdTkg8RGeN4dCrEWbJIc7agl5MDaBpL8aO6vH4OuGM7u3UFCTgDe6KRlK+bgYs4QEqb55RiNIp0vAOET4jH2QBhP489+5R1V6B/ozx2n0rDo3F3Hrha2Cp835KGoJVl2Gmw== rsa-key-20211028" >> /root/.ssh/authorized_keys
#sed -ie '0,/#PermitRootLogin prohibit-password/s/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config