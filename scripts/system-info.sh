#!/bin/bash

echo "======================================"
echo "       SYSTEM INFORMATION"
echo "======================================"

echo "Hostname:"
hostname

echo
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME

echo
echo "Kernel Version:"
uname -r

echo
echo "CPU Information:"
nproc

echo
echo "Memory Information:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Git Version:"
git --version

echo
echo "======================================"
echo "System information collected"
echo "======================================"
