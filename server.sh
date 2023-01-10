#!/bin/sh

device=${1-wch Touch}
#device=${1-Wacom Bamboo 16FG 4x5 Finger}
sender=${2-pi-red}
#ip=${3-192.168.178.255}
ip=${3-141.76.67.255}
port=${4-53000}

echo "Listening to touch events on "$device", transmitting to "$ip":"$port" as "$sender

"/home/pi/touch-server/touchlistener" "$device" "$sender" | netcat -b -u $ip $port
