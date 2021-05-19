#! /bin/bash
date
echo "" && echo "CPU Usage:"
mpstat
echo "" && echo "Memory Usage:"
cat /proc/meminfo | grep -E "^Mem"
echo "" && echo "Disk Usage:"
df -h | grep -v "none\|tmp"

