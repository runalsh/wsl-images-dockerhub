apt-get update 
apt-get install -qq -y --no-install-recommends \
    nmon \
    nano \
    net-tools \
    jq \
    curl \
    wget \
    sudo \
 && rm -rf /var/lib/apt/lists/*