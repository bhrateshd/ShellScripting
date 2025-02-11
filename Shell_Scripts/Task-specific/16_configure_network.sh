#!/bin/bash

echo "Enter network configuration variables:"
read -p "Enter an IP address: " ip_addr
read -p "Enter a subnet mask: " subnet_mask
read -p "Enter a Gateway address: " gateway
read -p "Enter a DNS address: " dns

# Configure network interface
sudo ifconfig eth0 $ip_addr netmask $subnet_mask up
if [ $? -eq 0 ]; then

# Set default gateway
sudo route add default gw $gateway
if [ $? -eq 0 ]; then

# Set DNS servers
sudo echo "nameserver $dns" > /etc/resolv.conf
if [ $? -eq 0 ]; then
echo "----------------------------------------------"
echo "Network configuration completed"
echo "----------------------------------------------"
else
echo "----------------------------------------------"
echo "Error while setting the DNS server."
fi
else
echo "----------------------------------------------"
echo "Error while setting the default gateway."
fi
else
echo "----------------------------------------------"
echo "Network Configuration Failed."
fi
