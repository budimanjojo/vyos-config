#!/bin/vbash
# shellcheck disable=all

set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '00:90:27:e6:37:b6'
set interfaces ethernet eth0 mac '00:90:27:e6:37:b6'
set interfaces ethernet eth0 address dhcp
set interfaces ethernet eth0 address dhcpv6
set interfaces ethernet eth0 mtu 1500

set interfaces ethernet eth2 description 'LAN2'
set interfaces ethernet eth2 hw-id '00:90:27:e6:37:b8'
set interfaces ethernet eth2 mac '00:90:27:e6:37:b8'
set interfaces ethernet eth2 address '192.168.20.1/24'
