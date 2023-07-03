<div align="center">

<img src="https://vyos.io/wp-content/themes/vyos_theme/images/main/vyos-logo.svg" align="center" width="144px" height="144px"/>

### My VyOS IaC configuration

</div>

## :book:&nbsp; Overview

This repository contains my [VyOS](https://docs.vyos.io/en/latest/index.html) configuration in a declarative state.
Everything I have here can be applied to the machine by running [apply-config.sh](./apply-config.sh) script in the machine.

## :inbox_tray:&nbsp; Quickstart

After installing VyOS in your machine, setup your LAN and WAN interface and make sure it can talk to the internet.
Something like this may do:

```
configure
set interfaces ethernet eth0 address dhcp
set interfaces ethernet eth1 address 192.168.10.1/24
set system name-server 1.1.1.1
commit
```

Once you're done, connect your workstation to the `eth1` and set a static IP in the `192.168.10.1/24` range.
Then you can run [bootstrap.sh](./bootstrap.sh) and follow the instruction on your screen.

## :handshake:&nbsp; Thanks

A lot of inspiration in this repository came from:

- [bjw-s](https://github.com/bjw-s/vyos-config)
- [scotte](https://github.com/szinn/vyos-config)
