#!/bin/vbash
# shellcheck disable=all

# From LAN1 to LOCAL
set firewall name LAN1-LOCAL description 'From LAN1 to LOCAL'
set firewall name LAN1-LOCAL default-action 'drop'
set firewall name LAN1-LOCAL enable-default-log
set firewall name LAN1-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name LAN1-LOCAL rule 10 action 'accept'
set firewall name LAN1-LOCAL rule 10 protocol 'udp'
set firewall name LAN1-LOCAL rule 10 source port '67,68'
set firewall name LAN1-LOCAL rule 10 destination port '67,68'
set firewall name LAN1-LOCAL rule 20 description 'allow access to ntp server'
set firewall name LAN1-LOCAL rule 20 action 'accept'
set firewall name LAN1-LOCAL rule 20 protocol 'udp'
set firewall name LAN1-LOCAL rule 20 destination port '123'
set firewall name LAN1-LOCAL rule 999 description 'drop invalid'
set firewall name LAN1-LOCAL rule 999 action 'drop'
set firewall name LAN1-LOCAL rule 999 state invalid 'enable'
set firewall name LAN1-LOCAL rule 999 log 'enable'

# From HOME to LOCAL
set firewall name HOME-LOCAL description 'From HOME to LOCAL'
set firewall name HOME-LOCAL default-action 'drop'
set firewall name HOME-LOCAL enable-default-log
set firewall name HOME-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name HOME-LOCAL rule 10 action 'accept'
set firewall name HOME-LOCAL rule 10 protocol 'udp'
set firewall name HOME-LOCAL rule 10 source port '67,68'
set firewall name HOME-LOCAL rule 10 destination port '67,68'
set firewall name HOME-LOCAL rule 20 description 'allow access to ntp server'
set firewall name HOME-LOCAL rule 20 action 'accept'
set firewall name HOME-LOCAL rule 20 protocol 'udp'
set firewall name HOME-LOCAL rule 20 destination port '123'
set firewall name HOME-LOCAL rule 30 description 'allow access to ssh server'
set firewall name HOME-LOCAL rule 30 action 'accept'
set firewall name HOME-LOCAL rule 30 protocol 'tcp'
set firewall name HOME-LOCAL rule 30 destination port '22'
set firewall name HOME-LOCAL rule 999 description 'drop invalid'
set firewall name HOME-LOCAL rule 999 action 'drop'
set firewall name HOME-LOCAL rule 999 state invalid 'enable'
set firewall name HOME-LOCAL rule 999 log 'enable'

# From IOT to LOCAL
set firewall name IOT-LOCAL description 'From IOT to LOCAL'
set firewall name IOT-LOCAL default-action 'drop'
set firewall name IOT-LOCAL enable-default-log
set firewall name IOT-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name IOT-LOCAL rule 10 action 'accept'
set firewall name IOT-LOCAL rule 10 protocol 'udp'
set firewall name IOT-LOCAL rule 10 source port '67,68'
set firewall name IOT-LOCAL rule 10 destination port '67,68'
set firewall name IOT-LOCAL rule 20 description 'allow access to ntp server'
set firewall name IOT-LOCAL rule 20 action 'accept'
set firewall name IOT-LOCAL rule 20 protocol 'udp'
set firewall name IOT-LOCAL rule 20 destination port '123'
set firewall name IOT-LOCAL rule 999 description 'drop invalid'
set firewall name IOT-LOCAL rule 999 action 'drop'
set firewall name IOT-LOCAL rule 999 state invalid 'enable'
set firewall name IOT-LOCAL rule 999 log 'enable'

# From SERVER to LOCAL
set firewall name SERVER-LOCAL description 'From SERVER to LOCAL'
set firewall name SERVER-LOCAL default-action 'drop'
set firewall name SERVER-LOCAL enable-default-log
set firewall name SERVER-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name SERVER-LOCAL rule 10 action 'accept'
set firewall name SERVER-LOCAL rule 10 protocol 'udp'
set firewall name SERVER-LOCAL rule 10 source port '67,68'
set firewall name SERVER-LOCAL rule 10 destination port '67,68'
set firewall name SERVER-LOCAL rule 20 description 'allow access to ntp server'
set firewall name SERVER-LOCAL rule 20 action 'accept'
set firewall name SERVER-LOCAL rule 20 protocol 'udp'
set firewall name SERVER-LOCAL rule 20 destination port '123'
set firewall name SERVER-LOCAL rule 40 description 'allow access to bgp server'
set firewall name SERVER-LOCAL rule 40 action 'accept'
set firewall name SERVER-LOCAL rule 40 protocol 'tcp'
set firewall name SERVER-LOCAL rule 40 destination port '179'
set firewall name SERVER-LOCAL rule 50 description 'allow access to tftp server'
set firewall name SERVER-LOCAL rule 50 action 'accept'
set firewall name SERVER-LOCAL rule 50 protocol 'tcp'
set firewall name SERVER-LOCAL rule 50 destination port '179'
set firewall name SERVER-LOCAL rule 60 description 'allow icmp request'
set firewall name SERVER-LOCAL rule 60 action 'accept'
set firewall name SERVER-LOCAL rule 60 protocol 'icmp'
set firewall name SERVER-LOCAL rule 60 source group address-group 'k8s_nodes'
set firewall name SERVER-LOCAL rule 70 description 'allow access to node-exporter from k8s nodes'
set firewall name SERVER-LOCAL rule 70 action 'accept'
set firewall name SERVER-LOCAL rule 70 protocol 'tcp'
set firewall name SERVER-LOCAL rule 70 source group address-group 'k8s_nodes'
set firewall name SERVER-LOCAL rule 70 destination port '9100'
set firewall name SERVER-LOCAL rule 999 description 'drop invalid'
set firewall name SERVER-LOCAL rule 999 action 'drop'
set firewall name SERVER-LOCAL rule 999 state invalid 'enable'
set firewall name SERVER-LOCAL rule 999 log 'enable'

# From GUEST to LOCAL
set firewall name GUEST-LOCAL description 'From GUEST to LOCAL'
set firewall name GUEST-LOCAL default-action 'drop'
set firewall name GUEST-LOCAL enable-default-log
set firewall name GUEST-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name GUEST-LOCAL rule 10 action 'accept'
set firewall name GUEST-LOCAL rule 10 protocol 'udp'
set firewall name GUEST-LOCAL rule 10 source port '67,68'
set firewall name GUEST-LOCAL rule 10 destination port '67,68'
set firewall name GUEST-LOCAL rule 20 description 'allow access to ntp server'
set firewall name GUEST-LOCAL rule 20 action 'accept'
set firewall name GUEST-LOCAL rule 20 protocol 'udp'
set firewall name GUEST-LOCAL rule 20 destination port '123'
set firewall name GUEST-LOCAL rule 999 description 'drop invalid'
set firewall name GUEST-LOCAL rule 999 action 'drop'
set firewall name GUEST-LOCAL rule 999 state invalid 'enable'
set firewall name GUEST-LOCAL rule 999 log 'enable'

# From CONTAINERS to LOCAL
set firewall name CONTAINERS-LOCAL description 'From CONTAINERS to LOCAL'
set firewall name CONTAINERS-LOCAL default-action 'drop'
set firewall name CONTAINERS-LOCAL enable-default-log
set firewall name CONTAINERS-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name CONTAINERS-LOCAL rule 10 action 'accept'
set firewall name CONTAINERS-LOCAL rule 10 protocol 'udp'
set firewall name CONTAINERS-LOCAL rule 10 source port '67,68'
set firewall name CONTAINERS-LOCAL rule 10 destination port '67,68'
set firewall name CONTAINERS-LOCAL rule 20 description 'allow access to ntp server'
set firewall name CONTAINERS-LOCAL rule 20 action 'accept'
set firewall name CONTAINERS-LOCAL rule 20 protocol 'udp'
set firewall name CONTAINERS-LOCAL rule 20 destination port '123'
set firewall name CONTAINERS-LOCAL rule 999 description 'drop invalid'
set firewall name CONTAINERS-LOCAL rule 999 action 'drop'
set firewall name CONTAINERS-LOCAL rule 999 state invalid 'enable'
set firewall name CONTAINERS-LOCAL rule 999 log 'enable'

# From WIREGUARD to LOCAL
set firewall name WIREGUARD-LOCAL description 'From WIREGUARD to LOCAL'
set firewall name WIREGUARD-LOCAL default-action 'drop'
set firewall name WIREGUARD-LOCAL enable-default-log
set firewall name WIREGUARD-LOCAL rule 10 description 'allow access to dhcp server'
set firewall name WIREGUARD-LOCAL rule 10 action 'accept'
set firewall name WIREGUARD-LOCAL rule 10 protocol 'udp'
set firewall name WIREGUARD-LOCAL rule 10 source port '67,68'
set firewall name WIREGUARD-LOCAL rule 10 destination port '67,68'
set firewall name WIREGUARD-LOCAL rule 20 description 'allow access to ntp server'
set firewall name WIREGUARD-LOCAL rule 20 action 'accept'
set firewall name WIREGUARD-LOCAL rule 20 protocol 'udp'
set firewall name WIREGUARD-LOCAL rule 20 destination port '123'
set firewall name WIREGUARD-LOCAL rule 30 description 'allow access to ssh server'
set firewall name WIREGUARD-LOCAL rule 30 action 'accept'
set firewall name WIREGUARD-LOCAL rule 30 protocol 'tcp'
set firewall name WIREGUARD-LOCAL rule 30 destination port '22'
set firewall name WIREGUARD-LOCAL rule 999 description 'drop invalid'
set firewall name WIREGUARD-LOCAL rule 999 action 'drop'
set firewall name WIREGUARD-LOCAL rule 999 state invalid 'enable'
set firewall name WIREGUARD-LOCAL rule 999 log 'enable'

# From WAN to LOCAL
set firewall name WAN-LOCAL description 'From WAN to LOCAL'
set firewall name WAN-LOCAL default-action 'drop'
set firewall name WAN-LOCAL enable-default-log
set firewall name WAN-LOCAL rule 10 description 'drop invalid'
set firewall name WAN-LOCAL rule 10 action 'drop'
set firewall name WAN-LOCAL rule 10 state invalid 'enable'
set firewall name WAN-LOCAL rule 10 log 'enable'
set firewall name WAN-LOCAL rule 20 description 'allow access to wireguard server'
set firewall name WAN-LOCAL rule 20 action 'accept'
set firewall name WAN-LOCAL rule 20 protocol 'udp'
set firewall name WAN-LOCAL rule 20 destination port '51821'

# From LOCAL to LAN1
set firewall name LOCAL-LAN1 description 'From LOCAL to LAN1'
set firewall name LOCAL-LAN1 default-action 'drop'
set firewall name LOCAL-LAN1 enable-default-log
set firewall name LOCAL-LAN1 rule 999 description 'drop invalid'
set firewall name LOCAL-LAN1 rule 999 action 'drop'
set firewall name LOCAL-LAN1 rule 999 state invalid 'enable'
set firewall name LOCAL-LAN1 rule 999 log 'enable'

# From HOME to LAN1
set firewall name HOME-LAN1 description 'From HOME to LAN1'
set firewall name HOME-LAN1 default-action 'drop'
set firewall name HOME-LAN1 enable-default-log
set firewall name HOME-LAN1 rule 10 description 'accept from trusted devices'
set firewall name HOME-LAN1 rule 10 action 'accept'
set firewall name HOME-LAN1 rule 10 source group address-group 'trusted_devices'
set firewall name HOME-LAN1 rule 999 description 'drop invalid'
set firewall name HOME-LAN1 rule 999 action 'drop'
set firewall name HOME-LAN1 rule 999 state invalid 'enable'
set firewall name HOME-LAN1 rule 999 log 'enable'

# From IOT to LAN1
set firewall name IOT-LAN1 description 'From IOT to LAN1'
set firewall name IOT-LAN1 default-action 'drop'
set firewall name IOT-LAN1 enable-default-log
set firewall name IOT-LAN1 rule 999 description 'drop invalid'
set firewall name IOT-LAN1 rule 999 action 'drop'
set firewall name IOT-LAN1 rule 999 state invalid 'enable'
set firewall name IOT-LAN1 rule 999 log 'enable'

# From SERVER to LAN1
set firewall name SERVER-LAN1 description 'From SERVER to LAN1'
set firewall name SERVER-LAN1 default-action 'accept'
set firewall name SERVER-LAN1 enable-default-log
set firewall name SERVER-LAN1 rule 999 description 'drop invalid'
set firewall name SERVER-LAN1 rule 999 action 'drop'
set firewall name SERVER-LAN1 rule 999 state invalid 'enable'
set firewall name SERVER-LAN1 rule 999 log 'enable'

# From GUEST to LAN1
set firewall name GUEST-LAN1 description 'From GUEST to LAN1'
set firewall name GUEST-LAN1 default-action 'drop'
set firewall name GUEST-LAN1 enable-default-log
set firewall name GUEST-LAN1 rule 999 description 'drop invalid'
set firewall name GUEST-LAN1 rule 999 action 'drop'
set firewall name GUEST-LAN1 rule 999 state invalid 'enable'
set firewall name GUEST-LAN1 rule 999 log 'enable'

# From CONTAINERS to LAN1
set firewall name CONTAINERS-LAN1 description 'From CONTAINERS to LAN1'
set firewall name CONTAINERS-LAN1 default-action 'drop'
set firewall name CONTAINERS-LAN1 enable-default-log
set firewall name CONTAINERS-LAN1 rule 999 description 'drop invalid'
set firewall name CONTAINERS-LAN1 rule 999 action 'drop'
set firewall name CONTAINERS-LAN1 rule 999 state invalid 'enable'
set firewall name CONTAINERS-LAN1 rule 999 log 'enable'

# From WIREGUARD to LAN1
set firewall name WIREGUARD-LAN1 description 'From WIREGUARD to LAN1'
set firewall name WIREGUARD-LAN1 default-action 'accept'
set firewall name WIREGUARD-LAN1 enable-default-log
set firewall name WIREGUARD-LAN1 rule 999 description 'drop invalid'
set firewall name WIREGUARD-LAN1 rule 999 action 'drop'
set firewall name WIREGUARD-LAN1 rule 999 state invalid 'enable'
set firewall name WIREGUARD-LAN1 rule 999 log 'enable'

# From WAN to LAN1
set firewall name WAN-LAN1 description 'From WAN to LAN1'
set firewall name WAN-LAN1 default-action 'drop'
set firewall name WAN-LAN1 enable-default-log
set firewall name WAN-LAN1 rule 999 description 'drop invalid'
set firewall name WAN-LAN1 rule 999 action 'drop'
set firewall name WAN-LAN1 rule 999 state invalid 'enable'
set firewall name WAN-LAN1 rule 999 log 'enable'

# From LOCAL to HOME
set firewall name LOCAL-HOME description 'From LOCAL to HOME'
set firewall name LOCAL-HOME default-action 'drop'
set firewall name LOCAL-HOME enable-default-log
set firewall name LOCAL-HOME rule 999 description 'drop invalid'
set firewall name LOCAL-HOME rule 999 action 'drop'
set firewall name LOCAL-HOME rule 999 state invalid 'enable'
set firewall name LOCAL-HOME rule 999 log 'enable'

# From LAN1 to HOME
set firewall name LAN1-HOME description 'From LAN1 to HOME'
set firewall name LAN1-HOME default-action 'drop'
set firewall name LAN1-HOME enable-default-log
set firewall name LAN1-HOME rule 999 description 'drop invalid'
set firewall name LAN1-HOME rule 999 action 'drop'
set firewall name LAN1-HOME rule 999 state invalid 'enable'
set firewall name LAN1-HOME rule 999 log 'enable'

# From IOT to LAN1
set firewall name IOT-HOME description 'From IOT to HOME'
set firewall name IOT-HOME default-action 'drop'
set firewall name IOT-HOME enable-default-log
set firewall name IOT-HOME rule 999 description 'drop invalid'
set firewall name IOT-HOME rule 999 action 'drop'
set firewall name IOT-HOME rule 999 state invalid 'enable'
set firewall name IOT-HOME rule 999 log 'enable'

# From SERVER to HOME
set firewall name SERVER-HOME description 'From SERVER to HOME'
set firewall name SERVER-HOME default-action 'drop'
set firewall name SERVER-HOME enable-default-log
set firewall name SERVER-HOME rule 10 description 'allow access to fullykioskbrowser from k8s nodes'
set firewall name SERVER-HOME rule 10 action 'accept'
set firewall name SERVER-HOME rule 10 protocol 'tcp'
set firewall name SERVER-HOME rule 10 source group address-group 'k8s_nodes'
set firewall name SERVER-HOME rule 10 destination group address-group 'wall_displays'
set firewall name SERVER-HOME rule 10 destination port '2323'
set firewall name SERVER-HOME rule 999 description 'drop invalid'
set firewall name SERVER-HOME rule 999 action 'drop'
set firewall name SERVER-HOME rule 999 state invalid 'enable'
set firewall name SERVER-HOME rule 999 log 'enable'

# From GUEST to HOME
set firewall name GUEST-HOME description 'From GUEST to HOME'
set firewall name GUEST-HOME default-action 'drop'
set firewall name GUEST-HOME enable-default-log
set firewall name GUEST-HOME rule 999 description 'drop invalid'
set firewall name GUEST-HOME rule 999 action 'drop'
set firewall name GUEST-HOME rule 999 state invalid 'enable'
set firewall name GUEST-HOME rule 999 log 'enable'

# From CONTAINERS to HOME
set firewall name CONTAINERS-HOME description 'From CONTAINERS to HOME'
set firewall name CONTAINERS-HOME default-action 'drop'
set firewall name CONTAINERS-HOME enable-default-log
set firewall name CONTAINERS-HOME rule 999 description 'drop invalid'
set firewall name CONTAINERS-HOME rule 999 action 'drop'
set firewall name CONTAINERS-HOME rule 999 state invalid 'enable'
set firewall name CONTAINERS-HOME rule 999 log 'enable'

# From WIREGUARD to HOME
set firewall name WIREGUARD-HOME description 'From WIREGUARD to LAN1'
set firewall name WIREGUARD-HOME default-action 'accept'
set firewall name WIREGUARD-HOME enable-default-log
set firewall name WIREGUARD-HOME rule 999 description 'drop invalid'
set firewall name WIREGUARD-HOME rule 999 action 'drop'
set firewall name WIREGUARD-HOME rule 999 state invalid 'enable'
set firewall name WIREGUARD-HOME rule 999 log 'enable'

# From WAN to HOME
set firewall name WAN-HOME description 'From WAN to HOME'
set firewall name WAN-HOME default-action 'drop'
set firewall name WAN-HOME enable-default-log
set firewall name WAN-HOME rule 999 description 'drop invalid'
set firewall name WAN-HOME rule 999 action 'drop'
set firewall name WAN-HOME rule 999 state invalid 'enable'
set firewall name WAN-HOME rule 999 log 'enable'

# From LOCAL to IOT
set firewall name LOCAL-IOT description 'From LOCAL to IOT'
set firewall name LOCAL-IOT default-action 'drop'
set firewall name LOCAL-IOT enable-default-log
set firewall name LOCAL-IOT rule 999 description 'drop invalid'
set firewall name LOCAL-IOT rule 999 action 'drop'
set firewall name LOCAL-IOT rule 999 state invalid 'enable'
set firewall name LOCAL-IOT rule 999 log 'enable'

# From LAN1 to IOT
set firewall name LAN1-IOT description 'From LAN1 to IOT'
set firewall name LAN1-IOT default-action 'drop'
set firewall name LAN1-IOT enable-default-log
set firewall name LAN1-IOT rule 999 description 'drop invalid'
set firewall name LAN1-IOT rule 999 action 'drop'
set firewall name LAN1-IOT rule 999 state invalid 'enable'
set firewall name LAN1-IOT rule 999 log 'enable'

# From HOME to IOT
set firewall name HOME-IOT description 'From LAN1 to IOT'
set firewall name HOME-IOT default-action 'accept'
set firewall name HOME-IOT enable-default-log
set firewall name HOME-IOT rule 999 description 'drop invalid'
set firewall name HOME-IOT rule 999 action 'drop'
set firewall name HOME-IOT rule 999 state invalid 'enable'
set firewall name HOME-IOT rule 999 log 'enable'

# From SERVER to IOT
set firewall name SERVER-IOT description 'From SERVER to IOT'
set firewall name SERVER-IOT default-action 'accept'
set firewall name SERVER-IOT enable-default-log
set firewall name SERVER-IOT rule 999 description 'drop invalid'
set firewall name SERVER-IOT rule 999 action 'drop'
set firewall name SERVER-IOT rule 999 state invalid 'enable'
set firewall name SERVER-IOT rule 999 log 'enable'

# From GUEST to IOT
set firewall name GUEST-IOT description 'From GUEST to IOT'
set firewall name GUEST-IOT default-action 'drop'
set firewall name GUEST-IOT enable-default-log
set firewall name GUEST-IOT rule 999 description 'drop invalid'
set firewall name GUEST-IOT rule 999 action 'drop'
set firewall name GUEST-IOT rule 999 state invalid 'enable'
set firewall name GUEST-IOT rule 999 log 'enable'

# From CONTAINERS to IOT
set firewall name CONTAINERS-IOT description 'From CONTAINERS to IOT'
set firewall name CONTAINERS-IOT default-action 'drop'
set firewall name CONTAINERS-IOT enable-default-log
set firewall name CONTAINERS-IOT rule 999 description 'drop invalid'
set firewall name CONTAINERS-IOT rule 999 action 'drop'
set firewall name CONTAINERS-IOT rule 999 state invalid 'enable'
set firewall name CONTAINERS-IOT rule 999 log 'enable'

# From WIREGUARD to IOT
set firewall name WIREGUARD-IOT description 'From WIREGUARD to IOT'
set firewall name WIREGUARD-IOT default-action 'accept'
set firewall name WIREGUARD-IOT enable-default-log
set firewall name WIREGUARD-IOT rule 999 description 'drop invalid'
set firewall name WIREGUARD-IOT rule 999 action 'drop'
set firewall name WIREGUARD-IOT rule 999 state invalid 'enable'
set firewall name WIREGUARD-IOT rule 999 log 'enable'

# From WAN to IOT
set firewall name WAN-IOT description 'From WAN to IOT'
set firewall name WAN-IOT default-action 'drop'
set firewall name WAN-IOT enable-default-log
set firewall name WAN-IOT rule 999 description 'drop invalid'
set firewall name WAN-IOT rule 999 action 'drop'
set firewall name WAN-IOT rule 999 state invalid 'enable'
set firewall name WAN-IOT rule 999 log 'enable'

# From LOCAL to SERVER
set firewall name LOCAL-SERVER description 'From LOCAL to SERVER'
set firewall name LOCAL-SERVER default-action 'drop'
set firewall name LOCAL-SERVER enable-default-log
set firewall name LOCAL-SERVER rule 10 description 'allow access to bgp peers'
set firewall name LOCAL-SERVER rule 10 action 'accept'
set firewall name LOCAL-SERVER rule 10 protocol 'tcp'
set firewall name LOCAL-SERVER rule 10 destination port '179'
set firewall name LOCAL-SERVER rule 20 description 'allow access to vector aggregator'
set firewall name LOCAL-SERVER rule 20 action 'accept'
set firewall name LOCAL-SERVER rule 20 protocol 'tcp'
set firewall name LOCAL-SERVER rule 20 destination group address-group 'k8s_vector_aggregator'
set firewall name LOCAL-SERVER rule 20 destination port '6000'
set firewall name LOCAL-SERVER rule 999 description 'drop invalid'
set firewall name LOCAL-SERVER rule 999 action 'drop'
set firewall name LOCAL-SERVER rule 999 state invalid 'enable'
set firewall name LOCAL-SERVER rule 999 log 'enable'

# From LAN1 to SERVER
set firewall name LAN1-SERVER description 'From LAN1 to SERVER'
set firewall name LAN1-SERVER default-action 'drop'
set firewall name LAN1-SERVER enable-default-log
set firewall name LAN1-SERVER rule 10 description 'allow access k8s ingress'
set firewall name LAN1-SERVER rule 10 action 'accept'
set firewall name LAN1-SERVER rule 10 protocol 'tcp'
set firewall name LAN1-SERVER rule 10 destination group address-group 'k8s_ingress'
set firewall name LAN1-SERVER rule 10 destination port '80,443'
set firewall name LAN1-SERVER rule 999 description 'drop invalid'
set firewall name LAN1-SERVER rule 999 action 'drop'
set firewall name LAN1-SERVER rule 999 state invalid 'enable'
set firewall name LAN1-SERVER rule 999 log 'enable'

# From HOME to SERVER
set firewall name HOME-SERVER description 'From HOME to SERVER'
set firewall name HOME-SERVER default-action 'drop'
set firewall name HOME-SERVER enable-default-log
set firewall name HOME-SERVER rule 10 description 'allow access k8s ingress'
set firewall name HOME-SERVER rule 10 action 'accept'
set firewall name HOME-SERVER rule 10 protocol 'tcp'
set firewall name HOME-SERVER rule 10 destination group address-group 'k8s_ingress'
set firewall name HOME-SERVER rule 10 destination port '80,443'
set firewall name HOME-SERVER rule 20 description 'allow access to ssh from trusted devices'
set firewall name HOME-SERVER rule 20 action 'accept'
set firewall name HOME-SERVER rule 20 protocol 'tcp'
set firewall name HOME-SERVER rule 20 source group address-group 'trusted_devices'
set firewall name HOME-SERVER rule 20 destination port '22'
set firewall name HOME-SERVER rule 30 description 'allow access to k8s nodes from trusted devices'
set firewall name HOME-SERVER rule 30 action 'accept'
set firewall name HOME-SERVER rule 30 source group address-group 'trusted_devices'
set firewall name HOME-SERVER rule 30 destination group address-group 'k8s_nodes'
set firewall name HOME-SERVER rule 40 description 'allow access to talos api port from trusted devices'
set firewall name HOME-SERVER rule 40 action 'accept'
set firewall name HOME-SERVER rule 40 protocol 'tcp'
set firewall name HOME-SERVER rule 40 source group address-group 'trusted_devices'
set firewall name HOME-SERVER rule 40 destination port '50000'
set firewall name HOME-SERVER rule 999 description 'drop invalid'
set firewall name HOME-SERVER rule 999 action 'drop'
set firewall name HOME-SERVER rule 999 state invalid 'enable'
set firewall name HOME-SERVER rule 999 log 'enable'

# From IOT to SERVER
set firewall name IOT-SERVER description 'From IOT to SERVER'
set firewall name IOT-SERVER default-action 'drop'
set firewall name IOT-SERVER enable-default-log
set firewall name IOT-SERVER rule 10 description 'allow broadlink plug to access kubernetes nodes'
set firewall name IOT-SERVER rule 10 action 'accept'
set firewall name IOT-SERVER rule 10 protocol 'udp'
set firewall name IOT-SERVER rule 10 source group address-group 'broadlink_plugs'
set firewall name IOT-SERVER rule 10 source port '80'
set firewall name IOT-SERVER rule 10 destination group address-group 'k8s_nodes'
set firewall name IOT-SERVER rule 999 description 'drop invalid'
set firewall name IOT-SERVER rule 999 action 'drop'
set firewall name IOT-SERVER rule 999 state invalid 'enable'
set firewall name IOT-SERVER rule 999 log 'enable'

# From GUEST to SERVER
set firewall name GUEST-SERVER description 'From GUEST to SERVER'
set firewall name GUEST-SERVER default-action 'drop'
set firewall name GUEST-SERVER enable-default-log
set firewall name GUEST-SERVER rule 999 description 'drop invalid'
set firewall name GUEST-SERVER rule 999 action 'drop'
set firewall name GUEST-SERVER rule 999 state invalid 'enable'
set firewall name GUEST-SERVER rule 999 log 'enable'

# From CONTAINERS to SERVER
set firewall name CONTAINERS-SERVER description 'From CONTAINERS to SERVER'
set firewall name CONTAINERS-SERVER default-action 'accept'
set firewall name CONTAINERS-SERVER enable-default-log
set firewall name CONTAINERS-SERVER rule 999 description 'drop invalid'
set firewall name CONTAINERS-SERVER rule 999 action 'drop'
set firewall name CONTAINERS-SERVER rule 999 state invalid 'enable'
set firewall name CONTAINERS-SERVER rule 999 log 'enable'

# From WIREGUARD to SERVER
set firewall name WIREGUARD-SERVER description 'From WIREGUARD to SERVER'
set firewall name WIREGUARD-SERVER default-action 'accept'
set firewall name WIREGUARD-SERVER enable-default-log
set firewall name WIREGUARD-SERVER rule 10 description 'allow access k8s ingress'
set firewall name WIREGUARD-SERVER rule 10 action 'accept'
set firewall name WIREGUARD-SERVER rule 10 protocol 'tcp'
set firewall name WIREGUARD-SERVER rule 10 destination group address-group 'k8s_ingress'
set firewall name WIREGUARD-SERVER rule 10 destination port '80,443'
set firewall name WIREGUARD-SERVER rule 999 description 'drop invalid'
set firewall name WIREGUARD-SERVER rule 999 action 'drop'
set firewall name WIREGUARD-SERVER rule 999 state invalid 'enable'
set firewall name WIREGUARD-SERVER rule 999 log 'enable'

# From WAN to SERVER
set firewall name WAN-SERVER description 'From WAN to SERVER'
set firewall name WAN-SERVER default-action 'drop'
set firewall name WAN-SERVER enable-default-log
set firewall name WAN-SERVER rule 10 description 'allow access k8s qBittorrent'
set firewall name WAN-SERVER rule 10 action 'accept'
set firewall name WAN-SERVER rule 10 protocol 'tcp_udp'
set firewall name WAN-SERVER rule 10 destination group address-group 'k8s_qbittorrent'
set firewall name WAN-SERVER rule 10 destination port '50413'
set firewall name WAN-SERVER rule 999 description 'drop invalid'
set firewall name WAN-SERVER rule 999 action 'drop'
set firewall name WAN-SERVER rule 999 state invalid 'enable'
set firewall name WAN-SERVER rule 999 log 'enable'

# From LOCAL to GUEST
set firewall name LOCAL-GUEST description 'From LOCAL to GUEST'
set firewall name LOCAL-GUEST default-action 'drop'
set firewall name LOCAL-GUEST enable-default-log
set firewall name LOCAL-GUEST rule 999 description 'drop invalid'
set firewall name LOCAL-GUEST rule 999 action 'drop'
set firewall name LOCAL-GUEST rule 999 state invalid 'enable'
set firewall name LOCAL-GUEST rule 999 log 'enable'

# From LAN1 to GUEST
set firewall name LAN1-GUEST description 'From LAN1 to GUEST'
set firewall name LAN1-GUEST default-action 'drop'
set firewall name LAN1-GUEST enable-default-log
set firewall name LAN1-GUEST rule 999 description 'drop invalid'
set firewall name LAN1-GUEST rule 999 action 'drop'
set firewall name LAN1-GUEST rule 999 state invalid 'enable'
set firewall name LAN1-GUEST rule 999 log 'enable'

# From HOME to GUEST
set firewall name HOME-GUEST description 'From HOME to GUEST'
set firewall name HOME-GUEST default-action 'drop'
set firewall name HOME-GUEST enable-default-log
set firewall name HOME-GUEST rule 999 description 'drop invalid'
set firewall name HOME-GUEST rule 999 action 'drop'
set firewall name HOME-GUEST rule 999 state invalid 'enable'
set firewall name HOME-GUEST rule 999 log 'enable'

# From IOT to GUEST
set firewall name IOT-GUEST description 'From IOT to GUEST'
set firewall name IOT-GUEST default-action 'drop'
set firewall name IOT-GUEST enable-default-log
set firewall name IOT-GUEST rule 999 description 'drop invalid'
set firewall name IOT-GUEST rule 999 action 'drop'
set firewall name IOT-GUEST rule 999 state invalid 'enable'
set firewall name IOT-GUEST rule 999 log 'enable'

# From SERVER to GUEST
set firewall name SERVER-GUEST description 'From SERVER to GUEST'
set firewall name SERVER-GUEST default-action 'drop'
set firewall name SERVER-GUEST enable-default-log
set firewall name SERVER-GUEST rule 999 description 'drop invalid'
set firewall name SERVER-GUEST rule 999 action 'drop'
set firewall name SERVER-GUEST rule 999 state invalid 'enable'
set firewall name SERVER-GUEST rule 999 log 'enable'

# From CONTAINERS to GUEST
set firewall name CONTAINERS-GUEST description 'From CONTAINERS to GUEST'
set firewall name CONTAINERS-GUEST default-action 'drop'
set firewall name CONTAINERS-GUEST enable-default-log
set firewall name CONTAINERS-GUEST rule 999 description 'drop invalid'
set firewall name CONTAINERS-GUEST rule 999 action 'drop'
set firewall name CONTAINERS-GUEST rule 999 state invalid 'enable'
set firewall name CONTAINERS-GUEST rule 999 log 'enable'

# From WIREGUARD to GUEST
set firewall name WIREGUARD-GUEST description 'From WIREGUARD to GUEST'
set firewall name WIREGUARD-GUEST default-action 'drop'
set firewall name WIREGUARD-GUEST enable-default-log
set firewall name WIREGUARD-GUEST rule 999 description 'drop invalid'
set firewall name WIREGUARD-GUEST rule 999 action 'drop'
set firewall name WIREGUARD-GUEST rule 999 state invalid 'enable'
set firewall name WIREGUARD-GUEST rule 999 log 'enable'

# From WAN to GUEST
set firewall name WAN-GUEST description 'From WAN to GUEST'
set firewall name WAN-GUEST default-action 'drop'
set firewall name WAN-GUEST enable-default-log
set firewall name WAN-GUEST rule 999 description 'drop invalid'
set firewall name WAN-GUEST rule 999 action 'drop'
set firewall name WAN-GUEST rule 999 state invalid 'enable'
set firewall name WAN-GUEST rule 999 log 'enable'

# From LOCAL to CONTAINERS
set firewall name LOCAL-CONTAINERS description 'From LOCAL to CONTAINERS'
set firewall name LOCAL-CONTAINERS default-action 'accept'
set firewall name LOCAL-CONTAINERS enable-default-log
set firewall name LOCAL-CONTAINERS rule 999 description 'drop invalid'
set firewall name LOCAL-CONTAINERS rule 999 action 'drop'
set firewall name LOCAL-CONTAINERS rule 999 state invalid 'enable'
set firewall name LOCAL-CONTAINERS rule 999 log 'enable'

# From LAN1 to CONTAINERS
set firewall name LAN1-CONTAINERS description 'From LAN1 to CONTAINERS'
set firewall name LAN1-CONTAINERS default-action 'accept'
set firewall name LAN1-CONTAINERS enable-default-log
set firewall name LAN1-CONTAINERS rule 10 description 'accept omada-controller udp ports'
set firewall name LAN1-CONTAINERS rule 10 action 'accept'
set firewall name LAN1-CONTAINERS rule 10 protocol 'udp'
set firewall name LAN1-CONTAINERS rule 10 destination group address-group 'omada_controller'
set firewall name LAN1-CONTAINERS rule 10 destination group port-group 'omada_udp'
set firewall name LAN1-CONTAINERS rule 20 description 'accept omada-controller tcp ports'
set firewall name LAN1-CONTAINERS rule 20 action 'accept'
set firewall name LAN1-CONTAINERS rule 20 protocol 'tcp'
set firewall name LAN1-CONTAINERS rule 20 destination group address-group 'omada_controller'
set firewall name LAN1-CONTAINERS rule 20 destination group port-group 'omada_tcp'
set firewall name LAN1-CONTAINERS rule 999 description 'drop invalid'
set firewall name LAN1-CONTAINERS rule 999 action 'drop'
set firewall name LAN1-CONTAINERS rule 999 state invalid 'enable'
set firewall name LAN1-CONTAINERS rule 999 log 'enable'

# From HOME to CONTAINERS
set firewall name HOME-CONTAINERS description 'From HOME to CONTAINERS'
set firewall name HOME-CONTAINERS default-action 'accept'
set firewall name HOME-CONTAINERS enable-default-log
set firewall name HOME-CONTAINERS rule 999 description 'drop invalid'
set firewall name HOME-CONTAINERS rule 999 action 'drop'
set firewall name HOME-CONTAINERS rule 999 state invalid 'enable'
set firewall name HOME-CONTAINERS rule 999 log 'enable'

# From IOT to CONTAINERS
set firewall name IOT-CONTAINERS description 'From IOT to CONTAINERS'
set firewall name IOT-CONTAINERS default-action 'drop'
set firewall name IOT-CONTAINERS enable-default-log
set firewall name IOT-CONTAINERS rule 10 description 'allow access to dns server'
set firewall name IOT-CONTAINERS rule 10 action 'accept'
set firewall name IOT-CONTAINERS rule 10 protocol 'tcp_udp'
set firewall name IOT-CONTAINERS rule 10 destination group address-group 'dns_server'
set firewall name IOT-CONTAINERS rule 10 destination port '53,853'
set firewall name IOT-CONTAINERS rule 999 description 'drop invalid'
set firewall name IOT-CONTAINERS rule 999 action 'drop'
set firewall name IOT-CONTAINERS rule 999 state invalid 'enable'
set firewall name IOT-CONTAINERS rule 999 log 'enable'

# From SERVER to CONTAINERS
set firewall name SERVER-CONTAINERS description 'From SERVER to CONTAINERS'
set firewall name SERVER-CONTAINERS default-action 'accept'
set firewall name SERVER-CONTAINERS enable-default-log
set firewall name SERVER-CONTAINERS rule 999 description 'drop invalid'
set firewall name SERVER-CONTAINERS rule 999 action 'drop'
set firewall name SERVER-CONTAINERS rule 999 state invalid 'enable'
set firewall name SERVER-CONTAINERS rule 999 log 'enable'

# From GUEST to CONTAINERS
set firewall name GUEST-CONTAINERS description 'From GUEST to CONTAINERS'
set firewall name GUEST-CONTAINERS default-action 'drop'
set firewall name GUEST-CONTAINERS enable-default-log
set firewall name GUEST-CONTAINERS rule 10 description 'allow access to dns server'
set firewall name GUEST-CONTAINERS rule 10 action 'accept'
set firewall name GUEST-CONTAINERS rule 10 protocol 'tcp_udp'
set firewall name GUEST-CONTAINERS rule 10 destination group address-group 'dns_server'
set firewall name GUEST-CONTAINERS rule 10 destination port '53,853'
set firewall name GUEST-CONTAINERS rule 20 description 'allow access to guest portal'
set firewall name GUEST-CONTAINERS rule 20 action 'accept'
set firewall name GUEST-CONTAINERS rule 20 protocol 'tcp'
set firewall name GUEST-CONTAINERS rule 20 destination group address-group 'omada_controller'
set firewall name GUEST-CONTAINERS rule 20 destination port '8088'
set firewall name GUEST-CONTAINERS rule 999 description 'drop invalid'
set firewall name GUEST-CONTAINERS rule 999 action 'drop'
set firewall name GUEST-CONTAINERS rule 999 state invalid 'enable'
set firewall name GUEST-CONTAINERS rule 999 log 'enable'

# From WIREGUARD to CONTAINERS
set firewall name WIREGUARD-CONTAINERS description 'From WIREGUARD to CONTAINERS'
set firewall name WIREGUARD-CONTAINERS default-action 'accept'
set firewall name WIREGUARD-CONTAINERS enable-default-log
set firewall name WIREGUARD-CONTAINERS rule 999 description 'drop invalid'
set firewall name WIREGUARD-CONTAINERS rule 999 action 'drop'
set firewall name WIREGUARD-CONTAINERS rule 999 state invalid 'enable'
set firewall name WIREGUARD-CONTAINERS rule 999 log 'enable'

# From WAN to CONTAINERS
set firewall name WAN-CONTAINERS description 'From WAN to CONTAINERS'
set firewall name WAN-CONTAINERS default-action 'drop'
set firewall name WAN-CONTAINERS enable-default-log
set firewall name WAN-CONTAINERS rule 999 description 'drop invalid'
set firewall name WAN-CONTAINERS rule 999 action 'drop'
set firewall name WAN-CONTAINERS rule 999 state invalid 'enable'
set firewall name WAN-CONTAINERS rule 999 log 'enable'

# From LOCAL to WIREGUARD
set firewall name LOCAL-WIREGUARD description 'From LOCAL to WIREGUARD'
set firewall name LOCAL-WIREGUARD default-action 'drop'
set firewall name LOCAL-WIREGUARD enable-default-log
set firewall name LOCAL-WIREGUARD rule 999 description 'drop invalid'
set firewall name LOCAL-WIREGUARD rule 999 action 'drop'
set firewall name LOCAL-WIREGUARD rule 999 state invalid 'enable'
set firewall name LOCAL-WIREGUARD rule 999 log 'enable'

# From LAN1 to WIREGUARD
set firewall name LAN1-WIREGUARD description 'From LAN1 to WIREGUARD'
set firewall name LAN1-WIREGUARD default-action 'drop'
set firewall name LAN1-WIREGUARD enable-default-log
set firewall name LAN1-WIREGUARD rule 999 description 'drop invalid'
set firewall name LAN1-WIREGUARD rule 999 action 'drop'
set firewall name LAN1-WIREGUARD rule 999 state invalid 'enable'
set firewall name LAN1-WIREGUARD rule 999 log 'enable'

# From HOME to WIREGUARD
set firewall name HOME-WIREGUARD description 'From HOME to WIREGUARD'
set firewall name HOME-WIREGUARD default-action 'drop'
set firewall name HOME-WIREGUARD enable-default-log
set firewall name HOME-WIREGUARD rule 10 description 'allow access to ssh from trusted devices'
set firewall name HOME-WIREGUARD rule 10 action 'accept'
set firewall name HOME-WIREGUARD rule 10 protocol 'tcp'
set firewall name HOME-WIREGUARD rule 10 source group address-group 'trusted_devices'
set firewall name HOME-WIREGUARD rule 10 destination port '22'
set firewall name HOME-WIREGUARD rule 999 description 'drop invalid'
set firewall name HOME-WIREGUARD rule 999 action 'drop'
set firewall name HOME-WIREGUARD rule 999 state invalid 'enable'
set firewall name HOME-WIREGUARD rule 999 log 'enable'

# From IOT to WIREGUARD
set firewall name IOT-WIREGUARD description 'From IOT to WIREGUARD'
set firewall name IOT-WIREGUARD default-action 'drop'
set firewall name IOT-WIREGUARD enable-default-log
set firewall name IOT-WIREGUARD rule 999 description 'drop invalid'
set firewall name IOT-WIREGUARD rule 999 action 'drop'
set firewall name IOT-WIREGUARD rule 999 state invalid 'enable'
set firewall name IOT-WIREGUARD rule 999 log 'enable'

# From SERVER to WIREGUARD
set firewall name SERVER-WIREGUARD description 'From SERVER to WIREGUARD'
set firewall name SERVER-WIREGUARD default-action 'drop'
set firewall name SERVER-WIREGUARD enable-default-log
set firewall name SERVER-WIREGUARD rule 10 description 'allow icmp request'
set firewall name SERVER-WIREGUARD rule 10 action 'accept'
set firewall name SERVER-WIREGUARD rule 10 protocol 'icmp'
set firewall name SERVER-WIREGUARD rule 20 description 'allow access to ssh server'
set firewall name SERVER-WIREGUARD rule 20 action 'accept'
set firewall name SERVER-WIREGUARD rule 20 protocol 'tcp'
set firewall name SERVER-WIREGUARD rule 20 destination port '22'
set firewall name SERVER-WIREGUARD rule 999 description 'drop invalid'
set firewall name SERVER-WIREGUARD rule 999 action 'drop'
set firewall name SERVER-WIREGUARD rule 999 state invalid 'enable'
set firewall name SERVER-WIREGUARD rule 999 log 'enable'

# From GUEST to WIREGUARD
set firewall name GUEST-WIREGUARD description 'From GUEST to WIREGUARD'
set firewall name GUEST-WIREGUARD default-action 'drop'
set firewall name GUEST-WIREGUARD enable-default-log
set firewall name GUEST-WIREGUARD rule 999 description 'drop invalid'
set firewall name GUEST-WIREGUARD rule 999 action 'drop'
set firewall name GUEST-WIREGUARD rule 999 state invalid 'enable'
set firewall name GUEST-WIREGUARD rule 999 log 'enable'

# From CONTAINERS to WIREGUARD
set firewall name CONTAINERS-WIREGUARD description 'From CONTAINERS to WIREGUARD'
set firewall name CONTAINERS-WIREGUARD default-action 'drop'
set firewall name CONTAINERS-WIREGUARD enable-default-log
set firewall name CONTAINERS-WIREGUARD rule 999 description 'drop invalid'
set firewall name CONTAINERS-WIREGUARD rule 999 action 'drop'
set firewall name CONTAINERS-WIREGUARD rule 999 state invalid 'enable'
set firewall name CONTAINERS-WIREGUARD rule 999 log 'enable'

# From WAN to WIREGUARD
set firewall name WAN-WIREGUARD description 'From WAN to WIREGUARD'
set firewall name WAN-WIREGUARD default-action 'drop'
set firewall name WAN-WIREGUARD enable-default-log
set firewall name WAN-WIREGUARD rule 999 description 'drop invalid'
set firewall name WAN-WIREGUARD rule 999 action 'drop'
set firewall name WAN-WIREGUARD rule 999 state invalid 'enable'
set firewall name WAN-WIREGUARD rule 999 log 'enable'

# From LOCAL to WAN
set firewall name LOCAL-WAN description 'From LOCAL to WAN'
set firewall name LOCAL-WAN default-action 'accept'

# From LAN1 to WAN
set firewall name LAN1-WAN description 'From LAN1 to WAN'
set firewall name LAN1-WAN default-action 'accept'

# From HOME to WAN
set firewall name HOME-WAN description 'From HOME to WAN'
set firewall name HOME-WAN default-action 'accept'

# From IOT to WAN
set firewall name IOT-WAN description 'From IOT to WAN'
set firewall name IOT-WAN default-action 'accept'

# From SERVER to WAN
set firewall name SERVER-WAN description 'From SERVER to WAN'
set firewall name SERVER-WAN default-action 'accept'

# From GUEST to WAN
set firewall name GUEST-WAN description 'From GUEST to WAN'
set firewall name GUEST-WAN default-action 'accept'

# From CONTAINERS to WAN
set firewall name CONTAINERS-WAN description 'From CONTAINERS to WAN'
set firewall name CONTAINERS-WAN default-action 'accept'

# From WIREGUARD to WAN
set firewall name WIREGUARD-WAN description 'From WIREGUARD to WAN'
set firewall name WIREGUARD-WAN default-action 'accept'
