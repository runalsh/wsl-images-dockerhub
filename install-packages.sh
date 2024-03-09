apt-get update 
apt-get install -qq -y --no-install-recommends \
    nmon \
    nano \
    net-tools \
    jq \
    curl \
    wget \
    sudo \
    tar \
    ca-certificates \
    systemd \
    systemd-sysv \
    apt-utils \
    openssh-server \
    openssh-client \
    git \
 && rm -rf /var/lib/apt/lists/*
