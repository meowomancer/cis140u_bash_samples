#! /bin/bash

#Define variables
timestamp="$(date)"
cpustats="$(mpstat)"
diskstats="$(df -h | grep -v "none\|tmp")"
memstats="$(cat /proc/meminfo | grep -E "^Mem")"

#Write data to logfile
echo $timestamp | tee -a newlog.txt 

echo "" | tee -a newlog.txt 
echo "CPU Usage:" | tee -a newlog.txt 
echo "$cpustats" | tee -a newlog.txt 

echo "" | tee -a newlog.txt 
echo "Disk Usage:" | tee -a newlog.txt 
echo "$diskstats" | tee -a newlog.txt 

echo "" | tee -a newlog.txt 
echo "Memory Usage:" | tee -a newlog.txt 
echo "$memstats" | tee -a newlog.txt 
