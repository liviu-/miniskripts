#!/usr/bin/env bash

# Display who's online along with their group
for name in $(who | awk '$0=$1'); do groups $name; done
