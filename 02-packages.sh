#!/bin/bash
# Author: Infinite-L00pBaCk (24BEC10139)

echo "================================================================================"
echo "                   MySQL AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

if [ -f "/etc/debian_version" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="mysql-server"
elif [ -f "/etc/redhat-release" ]; then
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="mariadb-server"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $(dpkg -l | grep $PACKAGE_NAME | awk '{print $3}')"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this $(lsb_release -ds) system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - MySQL: MySQL is an open-source relational database management system."
echo " - Linux: Linux is an open-source operating system."
echo " - Apache: Apache is an open-source web server software."
echo " - PHP: PHP is an open-source server-side scripting language."
echo "================================================================================"