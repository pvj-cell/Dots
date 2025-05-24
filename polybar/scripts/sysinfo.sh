#!/bin/bash

cpu=$(grep -oP '^[^ ]+' /proc/loadavg)
mem=$(free -m | awk '/Mem:/ {printf "%.0f%%", $3/$2*100}')
uptime=$(uptime -p | sed 's/up //')

echo "CPU: $cpu | RAM: $mem | $uptime"
