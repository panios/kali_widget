#!/bin/bash

# Script to count the number of active connections on the system

# Counts the number of TCP connections
TCP_CONNECTIONS=$(ss -t -a | grep -v 'State' | wc -l)

# Counts the number of UDP connections
UDP_CONNECTIONS=$(ss -u -a | grep -v 'State' | wc -l)

# Output the results
echo "TCP: $TCP_CONNECTIONS"
echo "UDP: $UDP_CONNECTIONS"
