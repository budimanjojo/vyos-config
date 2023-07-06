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
Then you can run [bootstrap.sh](./bootstrap.sh) and follow the instruction on your screen:
```
bash <(curl -s https://raw.githubusercontent.com/budimanjojo/vyos-config/main/bootstrap.sh)
```

The bootstrap script will:

1. Generate SSH keypair in `/config/secrets`.
2. Enable SSH access to itself.
3. Print the `scp` command to send `age` secret key into `/config/secrets` and getting the generated public key.
4. Pulling your repository into `/config` directory.
5. Generate container config files inside [containers](./containers) directory if they have `.bootstrap.tmpl` extension with secrets substituted.
6. Pull container images needed for bootstrap process.
7. Applying `set` commands inside [bootstrap](./bootstrap) directory.

After bootstrapping, you don't need to run it anymore although it should be pretty idempotent.

## :gear:&nbsp; Chore

Everytime you want to change something, do it inside `/config` directory and then run [apply-config.sh](./apply-config.sh) with `-c` flag.
Don't forget to push the changes to your remote repository too.
This will ensure the state of this repository to be the same as the machine configuration.

## :handshake:&nbsp; Thanks

A lot of inspiration in this repository came from:

- [bjw-s](https://github.com/bjw-s/vyos-config)
- [scotte](https://github.com/szinn/vyos-config)
