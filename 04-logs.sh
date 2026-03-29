#!/bin/bash
# Author: Infinite-L00pBaCk (24BEC10139)
# Suggested log path for MySQL: /var/log/mysql/error.log

echo "================================================================================"
echo "                   MySQL AUDIT - LOG FILE ANALYZER               "
echo "================================================================================"

target_log="$1"
keyword="$2"

count=0
matches=()

tail -n 1000 $target_log | while read line; do
  if echo $line | grep -q $keyword; then
    ((count++))
    matches+=($line)
  fi
done

echo "Found $count occurrences of '$keyword' in $target_log"

echo "Last 5 matches:"
for ((i=${#matches[@]}-1; i>=${#matches[@]}-5; i--)); do
  echo ${matches[i]}
done

echo "================================================================================"