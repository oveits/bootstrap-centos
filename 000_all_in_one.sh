#!/usr/bin/env bash

set -e

# Setup centos User
source 1_setup_user.sh

# Update Git Version
# source 2_update-git-centos.sh

# Configure Git credentials
source 3_configure_git.sh

# Install Docker v18.06.1.ce-3
source 4_install_docker.sh

# Install JQ and YQ
source 5_install_jq_and_yq.sh

# Set up aliases
source 6_source_set_aliases.sh

# Create iptables rules for a secure connection
source 7_create_iptables_entries.sh

# Set up cronjobs for updating iptables rules
#source 8_set_cronjobs.sh

# Hardening the machine like no root and password login
#source 9_hardening.sh

# Disable Ipv6 for better connection with git
#source 10_disabling_ipv6.sh

# Increase Watchfile Limit (needed e.g. for angular in watch mode)
bash 11_increasing_watchfile_limit.sh

