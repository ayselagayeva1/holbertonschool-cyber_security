#!/bin/bash

# Flush existing rules
iptables -F
ip6tables -F

# Default policy: drop incoming traffic
iptables -P INPUT DROP
ip6tables -P INPUT DROP

# Allow loopback
iptables -A INPUT -i lo -j ACCEPT
ip6tables -A INPUT -i lo -j ACCEPT

# Allow established and related connections
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
ip6tables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Allow incoming TCP connections on port 80 (IPv4)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Allow incoming TCP connections on port 80 (IPv6)
ip6tables -A INPUT -p tcp --dport 80 -j ACCEPT

echo "Rules updated"
echo "Rules updated (v6)"
