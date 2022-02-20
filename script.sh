#!/bin/sh

# Disable linux firewall. Use VPS firewall instead
ufw disable

# Install danted proxy
mkdir dante
cd dante || exit
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh --port=2016 --version=1.4.3

# To add user run:
# service sockd adduser name pass

# Delete user:
# service sockd deluser

cd ..

# Install open vpn
mkdir openvpn
cd openvpn || exit

curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh

AUTO_INSTALL=y DNS=3 ./openvpn-install.sh

# To add or revoke users just run:
# ./openvpn-install.sh
