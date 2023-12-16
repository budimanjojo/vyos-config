#!/bin/vbash
# shellcheck disable=all

set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '00:90:27:e6:37:b6'
set interfaces ethernet eth0 mac '00:90:27:e6:37:b6'
set interfaces ethernet eth0 address dhcp
set interfaces ethernet eth0 address dhcpv6
set interfaces ethernet eth0 mtu 1500

set interfaces ethernet eth1 description 'LAN1'
set interfaces ethernet eth1 hw-id '00:90:27:e6:37:b7'
set interfaces ethernet eth1 mac '00:90:27:e6:37:b7'
set interfaces ethernet eth1 address '192.168.10.1/24'
set interfaces ethernet eth1 vif 50 description 'HOME'
set interfaces ethernet eth1 vif 50 address '192.168.50.1/24'
set interfaces ethernet eth1 vif 69 description 'IOT'
set interfaces ethernet eth1 vif 69 address '192.168.69.1/24'
set interfaces ethernet eth1 vif 200 description 'SERVER'
set interfaces ethernet eth1 vif 200 address '192.168.200.1/24'
set interfaces ethernet eth1 vif 250 description 'GUEST'
set interfaces ethernet eth1 vif 250 address '192.168.250.1/24'

set interfaces ethernet eth2 description 'LAN2'
set interfaces ethernet eth2 hw-id '00:90:27:e6:37:b8'
set interfaces ethernet eth2 mac '00:90:27:e6:37:b8'
set interfaces ethernet eth2 disable

set interfaces ethernet eth3 description 'LAN3'
set interfaces ethernet eth3 hw-id '00:90:27:e6:37:b9'
set interfaces ethernet eth3 mac '00:90:27:e6:37:b9'
set interfaces ethernet eth3 disable

set interfaces ethernet eth4 description 'LAN4'
set interfaces ethernet eth4 hw-id '00:90:27:e6:37:ba'
set interfaces ethernet eth4 mac '00:90:27:e6:37:ba'
set interfaces ethernet eth4 disable

set interfaces ethernet eth5 description 'LAN5'
set interfaces ethernet eth5 hw-id '00:90:27:e6:37:bb'
set interfaces ethernet eth5 mac '00:90:27:e6:37:bb'
set interfaces ethernet eth5 disable

set interfaces wireguard wg0 description 'WIREGUARD'
set interfaces wireguard wg0 address '10.10.0.1/24'
set interfaces wireguard wg0 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
set interfaces wireguard wg0 port '51821'
set interfaces wireguard wg0 peer oneplus9-phone allowed-ips '10.10.0.2/32'
set interfaces wireguard wg0 peer oneplus9-phone persistent-keepalive '15'
set interfaces wireguard wg0 peer oneplus9-phone public-key 'WCESN/SAmvJekIxJSlmw+2FQg+uhvlseGhGvN/VZ0AU='
set interfaces wireguard wg0 peer work-pc allowed-ips '10.10.0.3/32'
set interfaces wireguard wg0 peer work-pc persistent-keepalive '15'
set interfaces wireguard wg0 peer work-pc public-key 'E+sLt3iBptnj6+7X/9S2ROglx8G3urufr18wCBt8bGQ='
set interfaces wireguard wg0 peer oneplus6t-phone allowed-ips '10.10.0.4/32'
set interfaces wireguard wg0 peer oneplus6t-phone persistent-keepalive '15'
set interfaces wireguard wg0 peer oneplus6t-phone public-key '4g38+3wtUHHlrOCl/HsIM6i8p1QeoWgHtPh7hjcQx10='
