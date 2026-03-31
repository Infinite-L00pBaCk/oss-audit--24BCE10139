#!/bin/bash
# Author: Infinite-LOOpBaCk (24BEC10139)
# ------------------------------------------------------------
# Script: 05-manifesto.sh
# Purpose: Interactively collect user input and generate a personalized
#          Open Source manifesto, appending it to a text file named after
#          the current user.
# ------------------------------------------------------------

# Prompt the user for three pieces of information.
read -p "What inspires you to contribute to open source? " inspiration
read -p "Which Python project(s) have you worked on recently? " projects
read -p "What is your vision for the future of open‑source software? " vision

# Construct a paragraph that weaves the answers together.
manifesto="\n---\nManifesto by $USER:\n\nI am inspired by $inspiration. In the past months I have contributed to $projects, which taught me the value of collaborative development. Looking ahead, I envision $vision, and I commit to fostering these ideals through my work with Python and the broader open‑source community.\n---\n"

# Define the output file – placed in the current directory for simplicity.
output_file="${USER}_manifesto.txt"

# Append the manifesto to the file, creating it if necessary.
printf "%s" "$manifesto" >> "$output_file"

# Inform the user where the manifesto was saved.
echo "Your manifesto has been saved to $output_file"
