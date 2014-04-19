#!/bin/bash

# Disable Firewall rules
# @see http://manpages.ubuntu.com/manpages/saucy/en/man8/ufw.8.html

sudo ufw status verbose
sudo ufw disable
sudo ufw status verbose
