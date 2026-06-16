#!/usr/bin/env bash

# Vars
PUBLIC_DNS="$(dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null | awk 'NF {print; exit}')"
ROUTER="$(route -n get default | awk '/gateway/ {print $2; exit}')"
ROUTER_DNS_TEST="$(dig @"$ROUTER" duckduckgo.com +short 2>/dev/null | awk 'NF {print; exit}')"
PUBLIC_IP="$(curl -4fsS --connect-timeout 5 --max-time 10 https://ifconfig.me 2>/dev/null || true)"
LAN_DNS="$(scutil --dns | awk '/nameserver\[[0-9]+\]/ {print $3}' | sort -u | paste -sd ',' -)"
INTERFACE="$(route -n get default | awk '/interface/ {print $2; exit}')"
LOCAL_IP="$(ipconfig getifaddr "$INTERFACE" 2>/dev/null || true)"

# Fallback
PUBLIC_DNS="${PUBLIC_DNS:-unavailable}"
ROUTER="${ROUTER:-unavailable}"
ROUTER_DNS_TEST="${ROUTER_DNS_TEST:-unavailable}"
PUBLIC_IP="${PUBLIC_IP:-unavailable}"
LAN_DNS="${LAN_DNS:-unavailable}"
INTERFACE="${INTERFACE:-unavailable}"
LOCAL_IP="${LOCAL_IP:-unavailable}"

# Execution
printf 'Your router IP=<%s>\n' "$ROUTER"
printf 'Your local DNS=<%s>\n' "$LAN_DNS"
printf 'Your local IP=<%s>\n' "$LOCAL_IP"
printf 'Your public IP via OpenDNS=<%s>\n' "$PUBLIC_DNS"
printf 'Your public IP via ifconfig.me=<%s>\n' "$PUBLIC_IP"
printf 'Router resolves duckduckgo.com to=<%s>\n' "$ROUTER_DNS_TEST"
printf 'Your local interface=<%s>\n' "$INTERFACE"

