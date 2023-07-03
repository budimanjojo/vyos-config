#!/bin/vbash
# shellcheck disable=all

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy related action 'accept'

# Drop packages from outside
set firewall name OUTSIDE-IN default action 'drop'
set firewall name OUTSIDE-LOCAL defaul action 'drop'
set firewall interface eth0 in name 'OUTSIDE-IN'
set firewall interface eth0 local name 'OUTSIDE-LOCAL'
