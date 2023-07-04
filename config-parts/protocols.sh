#!/bin/vbash
# shellcheck disable=all

set protocols bgp system-as '65400'
set protocols bgp parameters router-id '192.168.10.1'

set protocols bgp neighbor 192.168.200.21 description 'kmaster1'
set protocols bgp neighbor 192.168.200.21 remote-as '65401'
set protocols bgp neighbor 192.168.200.21 address-family ipv4-unicast
set protocols bgp neighbor 192.168.200.21 update-source eth1.200
set protocols bgp neighbor 192.168.200.22 description 'kmaster2'
set protocols bgp neighbor 192.168.200.22 remote-as '65401'
set protocols bgp neighbor 192.168.200.22 address-family ipv4-unicast
set protocols bgp neighbor 192.168.200.22 update-source eth1.200
set protocols bgp neighbor 192.168.200.23 description 'kmaster3'
set protocols bgp neighbor 192.168.200.23 remote-as '65401'
set protocols bgp neighbor 192.168.200.23 address-family ipv4-unicast
set protocols bgp neighbor 192.168.200.24 update-source eth1.200
