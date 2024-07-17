#!/bin/vbash
# shellcheck disable=all

set container network CONTAINERS description 'Network for containers'
set container network CONTAINERS prefix '10.5.0.0/24'

# adguardhome
set container name adguardhome cap-add 'net-bind-service'
set container name adguardhome image 'docker.io/adguard/adguardhome:v0.107.52'
set container name adguardhome memory '0'
set container name adguardhome network CONTAINERS address '10.5.0.2'
set container name adguardhome restart 'on-failure'
set container name adguardhome shared-memory '0'
set container name adguardhome volume config source '/config/containers/adguardhome/config'
set container name adguardhome volume config destination '/opt/adguardhome/conf'
set container name adguardhome volume config mode 'rw'
set container name adguardhome volume work source '/config/containers/adguardhome/work'
set container name adguardhome volume work destination '/opt/adguardhome/work'
set container name adguardhome volume work mode 'rw'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network CONTAINERS address '10.5.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config destination '/etc/bind'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# node-exporter
set container name node-exporter allow-host-networks
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.8.2'
set container name node-exporter memory '0'
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'

# omada-controller
set container name omada-controller image 'docker.io/mbentley/omada-controller:5.14'
set container name omada-controller memory '0'
set container name omada-controller network CONTAINERS address '10.5.0.10'
set container name omada-controller restart 'on-failure'
set container name omada-controller shared-memory '0'
set container name omada-controller volume data source '/config/containers/omada-controller/data'
set container name omada-controller volume data destination '/opt/tplink/EAPController/data'
set container name omada-controller volume data mode 'rw'
set container name omada-controller volume logs source '/config/containers/omada-controller/logs'
set container name omada-controller volume logs destination '/opt/tplink/EAPController/logs'
set container name omada-controller volume logs mode 'rw'
set container name omada-controller environment TZ value 'Asia/Jakarta'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.13.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value "${SECRET_CLOUDFLARE_DDNS_DOMAINS}"
set container name cloudflare-ddns environment IP6_PROVIDER value 'none'
set container name cloudflare-ddns environment UPDATE_CRON value '@every 2m'
set container name cloudflare-ddns environment PGID value '1000'
set container name cloudflare-ddns environment PUID value '1000'
set container name cloudflare-ddns environment TZ value 'Asia/Jakarta'
