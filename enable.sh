#!/bin/bash

# Enable Firewall rules
# @see http://manpages.ubuntu.com/manpages/saucy/en/man8/ufw.8.html
#
# Note: If during the script execution you see a warning message like
# "ip6tables v1.4.12: can't initialize ip6tables table `filter'", you need to
# disable the ip6 support in /etc/default/ufw, setting 'IPV6=no'

###############################################################################
# Disabled services
###############################################################################

# Postgresql
ufw deny proto tcp from any to any port 5432

###############################################################################
# Enabled services
###############################################################################

# Very important: enable access via ssh
ufw allow ssh

# Allow local connections to postgresql
ufw allow from 127.0.0.1 to 127.0.0.1 port 5432 proto tcp
ufw allow from 188.165.106.98 to 188.165.106.98 port 5432 proto tcp

ufw allow 80/tcp

###############################################################################
# Rate limiting
###############################################################################
ufw limit ssh/tcp

sudo ufw status verbose
sudo ufw enable
sudo ufw status verbose
