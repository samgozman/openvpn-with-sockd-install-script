# openvpn-with-sockd-install-script

Made it for myself to quickly deploy a typical vpn server on [Vultr](https://www.vultr.com/?ref=8999167).

It consists of only two things: [OpenVPN setup](https://github.com/angristan/openvpn-install) script and [Dante](https://github.com/Lozy/danted) sockd.

### Usage

1. Use this script as autoinstall on first boot.
2. Add user for sockd: `service sockd adduser name pass`
3. Add user for OpenVPN: `./openvpn-install.sh` and chose "Add user" 
