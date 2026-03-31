#!/bin/bash
# Author: Infinite-LOOpBaCk (24BEC10139)
# ------------------------------------------------------------
# Script: 01-identify.sh
# Purpose: Extract and display basic system information.
# ------------------------------------------------------------

# Retrieve Linux distribution information from /etc/os-release.
# The PRETTY_NAME field provides a human‑readable distro name.
if [[ -f /etc/os-release ]]; then
    # shellcheck disable=SC1091
    . /etc/os-release
    distro="$PRETTY_NAME"
else
    distro="Unknown Distribution"
fi

# Kernel version using uname.
kernel=$(uname -r)

# Current user and home directory from environment variables.
current_user="$USER"
home_dir="$HOME"

# System uptime – use 'uptime -p' for a pretty format.
# Fallback to parsing /proc/uptime if needed.
if command -v uptime >/dev/null 2>&1; then
    uptime_info=$(uptime -p 2>/dev/null || echo "up $(awk '{print int($1/60)" minutes"}' /proc/uptime)")
else
    uptime_info="Unavailable"
fi

# Current date and time in the required format.
current_date=$(date '+%a %b %d %Y %H:%M:%S %Z%z (Coordinated Universal Time)')

# Output formatting – use a simple ASCII banner for readability.
printf "================================================================================\n"
printf "                   Python AUDIT - SYSTEM IDENTITY                    \n"
printf "================================================================================\n"
printf "Linux Distribution: %s\n" "$distro"
printf "Kernel Version:     %s\n" "$kernel"
printf "Current User:       %s\n" "$current_user"
printf "Home Directory:     %s\n" "$home_dir"
printf "System Uptime:      %s\n" "$uptime_info"
printf "Current Date/Time:  %s\n" "$current_date"
printf "--------------------------------------------------------------------------------\n"
printf "Message: This system runs on Open Source software, providing freedom to study, change, and distribute.\n"
printf "================================================================================\n"
