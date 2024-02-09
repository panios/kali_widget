#!/bin/bash

# Script to find and display the IPv4 address of eth0 on Kali Linux
# make sure you do chmod 700 ip_widget.sh after cloning this code
# for more info see also https://github.com/psbelin/ip_widget

# Check if the eth0 interface exists and is up
INTERFACE_STATUS=$(ip link show eth0 2>/dev/null | grep -oP '(?<=state )\w+')

if [[ "$INTERFACE_STATUS" == "UP" ]]; then
    # If eth0 is up, extract and display its IPv4 address
    IP_ADDRESS=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    echo "eth0: $IP_ADDRESS 🟢"
else
    echo "eth0 is not up or not available."
fi
