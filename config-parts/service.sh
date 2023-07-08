#!/bin/vbash
# shellcheck disable=all

# SSH server
set service ssh listen-address '192.168.10.1'
set service ssh listen-address '192.168.200.1'
set service ssh disable-password-authentication

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server id.pool.ntp.org

# LAN1 DHCP server
set service dhcp-server shared-network-name LAN1 authoritative
set service dhcp-server shared-network-name LAN1 ping-check
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 default-router '192.168.10.1'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 lease '86400'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 name-server '10.5.0.2'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 domain-name 'home.arpa'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 range 0 start '192.168.10.50'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 range 0 stop '192.168.10.199'
# LAN1 static mappings
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 static-mapping firehd-8-livingroom ip-address '192.168.10.10'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 static-mapping firehd-8-livingroom mac-address '40:a9:cf:3b:a3:7d'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 static-mapping eunice-tablet ip-address '192.168.10.56'
set service dhcp-server shared-network-name LAN1 subnet 192.168.10.0/24 static-mapping eunice-tablet mac-address '4a:a4:dd:8d:e6:90'

# SERVER VLAN DHCP server
set service dhcp-server shared-network-name SERVER authoritative
set service dhcp-server shared-network-name SERVER ping-check
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 default-router '192.168.200.1'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 lease '86400'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 name-server '10.5.0.2'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 domain-name 'home.arpa'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 range 0 start '192.168.200.50'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 range 0 stop '192.168.200.199'
# SERVER VLAN static mappings
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-vm ip-address '192.168.200.30'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-vm mac-address 'd0:50:99:25:88:91'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-nas ip-address '192.168.200.31'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-nas mac-address 'ae:de:bc:cc:7b:2d'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-main ip-address '192.168.200.49'
set service dhcp-server shared-network-name SERVER subnet 192.168.200.0/24 static-mapping budimanjojo-main mac-address 'b4:2e:99:62:8d:06'

# IOT VLAN DHCP server
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 default-router '192.168.69.1'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 name-server '10.5.0.2'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 domain-name 'home.arpa'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 range 0 start '192.168.69.50'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 range 0 stop '192.168.69.199'
# IOT VLAN static mappings
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 static-mapping broadlink-livingroom-plug ip-address '192.168.69.10'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 static-mapping broadlink-livingroom-plug mac-address '34:ea:34:79:f0:91'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 static-mapping broadlink-bedroom-rm4c ip-address '192.168.69.11'
set service dhcp-server shared-network-name IOT subnet 192.168.69.0/24 static-mapping broadlink-bedroom-rm4c mac-address '24:df:a7:4f:9a:8e'

# GUEST VLAN DHCP server
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 default-router '192.168.250.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 name-server '10.5.0.2'
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 domain-name 'home.arpa'
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 range 0 start '192.168.250.50'
set service dhcp-server shared-network-name GUEST subnet 192.168.250.0/24 range 0 stop '192.168.250.199'
