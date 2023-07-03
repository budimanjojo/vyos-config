#!/bin/bash
#
# Description: Restore latest config directory and configuration commands from a USB device
#

src=/media/usb-backup

# Only restore if $src is a mount
if mountpoint -q $src; then
  # Restore latest VyOS /config
  vyos_backup=$(ls -t "$src/vyos" | grep config | head -1)
  if [ -n "$vyos_backup" ]; then
    tar -zxvf "$src/vyos/$vyos_backup" -C /
  else
    echo "No VyOS backup found."
  fi
else
  echo "$src is not a mount point."
fi
