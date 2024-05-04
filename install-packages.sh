apt-get update 
apt-get install -y --no-install-recommends --no-install-suggests \
    nmon \
    nano \
    net-tools \
    jq \
    curl \
    wget \
    sudo \
    tar \
    mc \
    ca-certificates \
    systemd \
    systemd-sysv \
    apt-utils \
    openssh-server \
    openssh-client \
    iputils-ping \
    coreutils  \
    telnet \
    gpg \
    locales \
    grep
echo Europe/Moscow > /etc/timezone
sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc
echo "export LANG=en_US.UTF-8" >> ~/.bashrc
echo "export LANGUAGE=en_US.UTF-8" >> ~/.bashrc
locale-gen en_US.UTF-8
echo LANG=en_US.UTF-8 >> /etc/default/locale
apt-get autoremove --yes
apt-get clean all
apt-get autoclean
rm -rf /var/lib/{apt,dpkg,cache,log}/*

