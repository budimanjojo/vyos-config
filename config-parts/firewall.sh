#!/bin/vbash
# shellcheck disable=all

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy related action 'accept'
set firewall all-ping enable
set firewall broadcast-ping disable

# Address groups
set firewall group address-group trusted_devices address '192.168.50.10'
set firewall group address-group trusted_devices address '192.168.50.11'
set firewall group address-group trusted_devices address '192.168.50.49'

set firewall group address-group k8s_api address '192.168.200.20'
set firewall group address-group k8s_ingress address '192.168.15.0'

set firewall group address-group k8s_services address '192.168.15.0-192.168.15.254'
set firewall group address-group k8s_services address '192.168.200.200-192.168.200.210'
set firewall group address-group k8s_services address '192.168.10.200-192.168.10.210'

set firewall group address-group k8s_nodes address '192.168.200.21-192.168.200.23'

set firewall group address-group nas address '192.168.200.31'

set firewall group address-group dns_server address '10.5.0.2'
set firewall group address-group omada_controller address '10.5.0.10'

# Port groups
set firewall group port-group omada_tcp port '29811-29814'
set firewall group port-group omada_tcp port '443'
set firewall group port-group omada_tcp port '8043'
set firewall group port-group omada_udp port '29810'
