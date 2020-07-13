#!/usr/bin/env bash

# Setup centos User
bash 1_setup_user.sh

# Update Git Version
bash 2_update-git-centos.sh

# Configure Git credentials
bash 3_configure_git.sh

# Install Docker v18.06.1.ce-3
bash 4_install_docker.sh

# Install JQ and YQ
bash 5_install_jq_and_yq.sh

# Set up aliases
bash 6_source_set_aliases.sh

# Create iptables rules for a secure connection
bash 7_create_iptables_entries.sh

# Set up cronjobs for updating iptables rules
bash 8_set_cronjobs.sh

# Hardening the machine like no root and password login
bash 9_hardening.sh

# Disable Ipv6 for better connection with git
bash 10_disabling_ipv6.sh
