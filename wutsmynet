#!/usr/bin/env bash

# Vars
PUBLIC_DNS="$(dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null)"
ROUTER="$(route -n get default | awk '/gateway/ {print $2; exit}')"
ROUTER_DNS_TEST="$(dig @"$ROUTER" duckduckgo.com +short)"
PUBLIC_IP="$(curl -4fsS https://ifconfig.me)"
LAN_DNS="$(scutil --dns | grep -E 'nameserver\[[0-9]+\]' | awk -F': ' '{print $2}' | sort -u)"
INTERFACE="$(route -n get default | awk '/interface/ {print $2; exit}')"
LOCAL_IP="$(ipconfig getifaddr "$INTERFACE")"
printf 'Your router DNS <%s>\n' "$ROUTER"
printf 'Your router IP=<%s>\n' "$ROUTER"
printf 'Your local DNS=<%s>\n' "$LAN_DNS"
printf 'Your local IP=<%s>\n' "$LOCAL_IP"
printf 'Your public egress dns=<%s>\n' "$ROUTER_DNS_TEST"
printf 'Your public DNS=<%s>\n' "$PUBLIC_DNS"
printf 'Your public IP=<%s>\n' "$PUBLIC_IP"

