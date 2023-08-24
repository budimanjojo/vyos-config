#!/bin/vbash
# shellcheck disable=all

# Force DNS
set nat destination rule 102 description 'Force DNS for IOT VLAN'
set nat destination rule 102 destination address '!10.5.0.2'
set nat destination rule 102 destination port '53'
set nat destination rule 102 inbound-interface 'eth1.69'
set nat destination rule 102 protocol 'tcp_udp'
set nat destination rule 102 translation address '10.5.0.2'
set nat destination rule 102 translation port '53'

set nat destination rule 103 description 'Force DNS for GUEST VLAN'
set nat destination rule 103 destination address '!10.5.0.2'
set nat destination rule 103 destination port '53'
set nat destination rule 103 inbound-interface 'eth1.250'
set nat destination rule 103 protocol 'tcp_udp'
set nat destination rule 103 translation address '10.5.0.2'
set nat destination rule 103 translation port '53'

# Force NTP
set nat destination rule 104 description 'Force NTP for LAN1'
set nat destination rule 104 destination address '!192.168.10.1'
set nat destination rule 104 destination port '123'
set nat destination rule 104 inbound-interface 'eth1'
set nat destination rule 104 protocol 'udp'
set nat destination rule 104 translation address '192.168.10.1'
set nat destination rule 104 translation port '123'

set nat destination rule 105 description 'Force NTP for HOME'
set nat destination rule 105 destination address '!192.168.50.1'
set nat destination rule 105 destination port '123'
set nat destination rule 105 inbound-interface 'eth1'
set nat destination rule 105 protocol 'udp'
set nat destination rule 105 translation address '192.168.50.1'
set nat destination rule 105 translation port '123'

set nat destination rule 106 description 'Force NTP for IOT VLAN'
set nat destination rule 106 destination address '!192.168.69.1'
set nat destination rule 106 destination port '123'
set nat destination rule 106 inbound-interface 'eth1.69'
set nat destination rule 106 protocol 'udp'
set nat destination rule 106 translation address '192.168.69.1'
set nat destination rule 106 translation port '123'

set nat destination rule 107 description 'Force NTP for SERVER VLAN'
set nat destination rule 107 destination address '!192.168.200.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface 'eth1.200'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '192.168.200.1'
set nat destination rule 107 translation port '123'

set nat destination rule 108 description 'Force NTP for GUEST VLAN'
set nat destination rule 108 destination address '!192.168.250.1'
set nat destination rule 108 destination port '123'
set nat destination rule 108 inbound-interface 'eth1.250'
set nat destination rule 108 protocol 'udp'
set nat destination rule 108 translation address '192.168.250.1'
set nat destination rule 108 translation port '123'

set nat destination rule 109 description 'Force NTP for WIREGUARD'
set nat destination rule 109 destination address '!10.10.0.1'
set nat destination rule 109 destination port '123'
set nat destination rule 109 inbound-interface 'wg0'
set nat destination rule 109 protocol 'udp'
set nat destination rule 109 translation address '10.10.0.1'
set nat destination rule 109 translation port '123'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface 'eth0'
set nat source rule 100 translation address 'masquerade'
