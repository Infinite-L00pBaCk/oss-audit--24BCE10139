#!/bin/bash
# Author: Infinite-L00pBaCk (24BEC10139)

dirs=("/etc" "/var/log" "/usr/bin" "/var/lib/mysql" "/etc/mysql")

echo "================================================================================"
echo "                   MySQL AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"

for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo -e "$dir\t$(du -sh $dir | awk '{print $1}')\t$(stat -c %a $dir)\t$(stat -c %U $dir)"
  else
    echo "$dir does not exist"
  fi
done

echo "================================================================================"