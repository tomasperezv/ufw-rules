#!/bin/bash

# Disable the firewall automatically after 300 seconds
# @see http://manpages.ubuntu.com/manpages/saucy/en/man8/ufw.8.html

sleep 300 && ufw disable
