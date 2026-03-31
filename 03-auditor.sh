#!/bin/bash
# Author: Infinite-LOOpBaCk (24BEC10139)
# ------------------------------------------------------------
# Script: 03-auditor.sh
# Purpose: Audit a set of system and Python‑specific directories, reporting
#          size, permissions, and owner in aligned columns.
# ------------------------------------------------------------

# Base directories that are generally interesting for a Python audit.
base_dirs=(
    "/etc"
    "/var/log"
    "/usr/share"
    "/opt"
)

# Dynamically add Python‑specific locations.
python_dirs=(
    "/usr/lib/python3.11"
    "/usr/local/lib/python3.11"
)

# Combine both arrays into a single list for iteration.
all_dirs=(${base_dirs[@]} ${python_dirs[@]})

# Header for the output table.
printf "%-30s %-10s %-12s %-s\n" "Directory" "Size" "Permissions" "Owner"
printf "%s\n" "$(printf '─%.0s' {1..70})"

# Loop through each directory, verify existence, and extract details.
for dir in "${all_dirs[@]}"; do
    if [[ -d "$dir" ]]; then
        # Size: human‑readable total size of the directory (du -sh).
        size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        # Permissions and owner: use ls -ld and parse fields.
        # Example output: drwxr-xr-x 2 root root 4096 Jan 01 00:00 /etc
        perm_owner=$(ls -ld "$dir" 2>/dev/null | awk '{print $1" "$3" "$4}')
        permissions=$(echo "$perm_owner" | awk '{print $1}')
        owner=$(echo "$perm_owner" | awk '{print $2":"$3}')
        printf "%-30s %-10s %-12s %-s\n" "$dir" "$size" "$permissions" "$owner"
    else
        # If the directory does not exist, note it clearly.
        printf "%-30s %-10s %-12s %-s\n" "$dir" "N/A" "N/A" "Missing"
    fi
done
