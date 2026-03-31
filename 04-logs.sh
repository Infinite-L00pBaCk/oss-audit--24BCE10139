#!/bin/bash
# Author: Infinite-LOOpBaCk (24BEC10139)
# ------------------------------------------------------------
# Script: 04-logs.sh
# Purpose: Analyze a given log file for a specific keyword, count matches,
#          and display the last five matching lines.
# ------------------------------------------------------------

# Verify that a log file path was supplied.
if [[ -z "$1" ]]; then
    echo "Usage: $0 <log_file_path> <keyword>"
    exit 1
fi

log_file="$1"
keyword="$2"

# Suggest a realistic Python log location if the user passes a generic path.
# This comment is for documentation purposes only.
# Example Python application log: /var/log/python3/app.log

# Ensure the log file exists and is readable.
if [[ ! -r "$log_file" ]]; then
    echo "Error: Cannot read log file '$log_file'."
    exit 2
fi

# Initialize a counter and an array to store matching lines.
match_count=0
declare -a matches

# Read the log file line‑by‑line.
while IFS= read -r line; do
    if [[ -n "$keyword" && "$line" == *"$keyword"* ]]; then
        ((match_count++))
        matches+=("$line")
    fi
done < "$log_file"

# Output the total number of matches.
printf "Total occurrences of '%s': %d\n" "$keyword" "$match_count"

# If there are matches, display the last five using tail logic.
if (( match_count > 0 )); then
    printf "Last 5 matching entries:\n"
    # Determine how many lines to show (max 5).
    start=$(( match_count > 5 ? match_count - 5 : 0 ))
    for (( i=start; i<match_count; i++ )); do
        echo "${matches[i]}"
    done
else
    echo "No matching entries found."
fi
