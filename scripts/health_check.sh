#!/bin/bash

echo "System Health Report - $(date)"
echo "-------------------------------"
echo "CPU Load: $(uptime | awk '{print $10}')"
echo "Memory Usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
echo "Disk Usage:"
df -h | grep -E '^/dev/' | awk '{print $1, $5}'

