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
