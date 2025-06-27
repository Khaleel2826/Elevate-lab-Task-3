#!/bin/bash

# Install UFW if not present
sudo apt update && sudo apt install -y ufw

# Enable UFW (if not already)
sudo ufw enable

# Check current rules
sudo ufw status verbose

# Block port 23
sudo ufw deny 23/tcp

# Test (requires telnet installed)
# telnet localhost 23

# Allow SSH
sudo ufw allow 22/tcp

# List and remove block rule (replace N with actual rule number)
# sudo ufw status numbered
# sudo ufw delete N
