#!/bin/bash
#
# Description: Backup config directory and configuration commands to a USB device
#

dest=/media/usb-backup

# Only backup if $dest is a mount
if mountpoint -q $dest; then
  # Backup VyOS /config
  backup_dest="$dest/vyos"
  if [ ! -d "$backup_dest" ]; then
    mkdir "$backup_dest"
  fi
  tar --exclude="overlay*" --exclude="omada*" -zvcf "$backup_dest/config.$(date +%Y%m%d%H%M%S).tar.gz" /config

  # Omada controller backups
  backup_dest="$dest/omada"
  rsync -r /config/containers/omada/data/autobackup/ "$backup_dest"

  # Delete backups older than 10 days
  find $dest -type f .mtime +10 -delete
else
  echo "$dest is not a mount point."
fi
