#!/bin/bash
if [[ -z "$1" ]]; then
  echo "[!] Error: Please use syntax: ban.sh [IP]"
exit 0
fi
iptables -I INPUT -s $1 -j DROP
echo "Banned IP: $1"
exit 0
