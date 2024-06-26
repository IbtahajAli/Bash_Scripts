#!/bin/bash

Name=$(whoami)
CPU=$(nproc)
RAM=$(grep -i 'memtotal' /proc/meminfo | awk '{print $2 / 1024 / 1024 " GB"}')
HDD=$(lsblk -b -d -o NAME,SIZE | grep -E 'sda|sdb' | awk '{sum += $2} END {print sum / (1024^3)}')

echo "Name : $Name "
echo "Cpu : $CPU CPU "
echo "RAM : $RAM "
echo "HDD : $HDD GB "
