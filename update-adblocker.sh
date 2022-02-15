#!/bin/bash
# Name: update-adblocker.sh
# Purpose: Download and update adblocker list for dnscrypt proxy
# Usage: Call it from the CLI or cron job https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/
DEST="/etc/dnscrypt-proxy/blacklist.txt"
#
# Blocks both adware + malware 
# See for other lists https://github.com/StevenBlack/hosts
SRC="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
TMP_B_FILE="$(mktemp)"
TMP_B_FILE_SORTED="$(mktemp)"
wget --timeout=10 --tries=5 -qO- "${SRC}" | grep -Ev "(localhost)" | grep -Ev "#" | sed -E "s/(0.0.0.0 |127.0.0.1 |255.255.255.255 )//" >> "${TMP_B_FILE}"
awk '/^[^#]/ { print $1 }' "${TMP_B_FILE}" | sort -u > "${TMP_B_FILE_SORTED}"
cp -f "${TMP_B_FILE_SORTED}" "$DEST"
rm -f "${TMP_B_FILE}" "${TMP_B_FILE_SORTED}"
