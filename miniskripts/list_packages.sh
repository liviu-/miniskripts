#!/usr/bin/env bash

# List packages installed explicitly using 
# pacman and format the output in `$1` columns.
# Helps a bit when cleaning the system.

pacman -Qe | pr -$1 -t
