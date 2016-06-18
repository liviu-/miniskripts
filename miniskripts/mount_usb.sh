#!/usr/bin/env bash

# I never really got around setting up auto-mounting so this is
# a one liner that mounts a SCSI disk when plugged in
sudo mount $(echo "/dev/$(dmesg | tail | grep -oe "sd[a-c][0-9]")") /mnt
