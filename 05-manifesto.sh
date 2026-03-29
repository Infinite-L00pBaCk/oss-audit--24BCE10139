#!/bin/bash
# Author: Infinite-L00pBaCk (24BEC10139)

echo "================================================================================"
echo "                   MySQL AUDIT - MANIFESTO GENERATOR             "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "What do you think is the most important aspect of open-source software? " aspect

echo "As $name, I believe that $project is a great example of the power of open-source software. I think that the most important aspect of open-source software is $aspect. I will continue to support and contribute to open-source projects, and I hope that others will join me in this effort."

echo "================================================================================"

echo "Saving manifesto to $name.txt..."
echo "As $name, I believe that $project is a great example of the power of open-source software. I think that the most important aspect of open-source software is $aspect. I will continue to support and contribute to open-source projects, and I hope that others will join me in this effort." > $name.txt