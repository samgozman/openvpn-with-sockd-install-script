#!/bin/sh

# Disable linux firewall. Use VPS firewall instead
ufw disable

apt-get update
apt-get upgrade -y

