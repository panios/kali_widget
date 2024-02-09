# IP Finder for eth0 on Kali Linux

This is a simple bash script for Kali Linux that finds and displays the IPv4 address assigned to the `eth0` network interface.

## Description

When executed, the script checks whether the `eth0` network interface is up and running. If it is, the script will output the IPv4 address associated with `eth0`. If the interface is not up or does not exist, it will notify the user that `eth0` is not available or not active.

## Requirements

- Kali Linux Operating System
- Bash shell
- Network interface named `eth0`
