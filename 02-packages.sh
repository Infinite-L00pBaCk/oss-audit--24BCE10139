#!/bin/bash
# Author: Infinite-LOOpBaCk (24BEC10139)
# ------------------------------------------------------------
# Script: 02-packages.sh
# Purpose: Detect package manager, verify Python installation, and display
#          philosophy notes for several FOSS tools.
# ------------------------------------------------------------

# Function to detect the package manager and set the appropriate Python package name.
detect_pkg_manager() {
    if command -v apt-get >/dev/null 2>&1; then
        pkg_manager="apt"
        python_pkg="python3"
    elif command -v dnf >/dev/null 2>&1; then
        pkg_manager="dnf"
        python_pkg="python3"
    elif command -v yum >/dev/null 2>&1; then
        pkg_manager="yum"
        python_pkg="python3"
    elif command -v pacman >/dev/null 2>&1; then
        pkg_manager="pacman"
        python_pkg="python"
    else
        pkg_manager="unknown"
        python_pkg="python3"
    fi
}

# Detect the package manager.
detect_pkg_manager

# Check if the Python package is installed and retrieve its version.
check_python() {
    case "$pkg_manager" in
        apt)
            dpkg -s "$python_pkg" >/dev/null 2>&1 && installed=true || installed=false
            ;;
        dnf|yum)
            rpm -q "$python_pkg" >/dev/null 2>&1 && installed=true || installed=false
            ;;
        pacman)
            pacman -Qi "$python_pkg" >/dev/null 2>&1 && installed=true || installed=false
            ;;
        *)
            # Fallback: try the command directly.
            command -v python3 >/dev/null 2>&1 && installed=true || installed=false
            ;;
    esac

    if $installed; then
        # Extract version using the interpreter itself – works across distros.
        version=$(python3 --version 2>&1 | awk '{print $2}')
        status_msg="${python_pkg} is INSTALLED on this ${pkg_manager} system."
    else
        version="N/A"
        status_msg="${python_pkg} is NOT INSTALLED on this ${pkg_manager} system."
    fi
}

check_python

# ------------------------------------------------------------
# Display results with a decorative banner.
printf "================================================================================\n"
printf "                   Python AUDIT - PACKAGE INSPECTOR                 \n"
printf "================================================================================\n"
printf "Status: %s\n" "$status_msg"
printf "Version: %s\n" "$version"
printf "--------------------------------------------------------------------------------\n"
printf "FOSS Philosophy Notes:\n"

# Case statement to print philosophy notes for four tools.
# The variable $tool is used to select the appropriate note.
for tool in "Python" "Git" "Linux" "GNU"; do
    case "$tool" in
        "Python")
            note="Python emphasizes readability and community‑driven development, embodying the spirit of open collaboration.";;
        "Git")
            note="Git provides a distributed version‑control system that empowers developers to share and improve code freely.";;
        "Linux")
            note="Linux is a kernel that demonstrates the power of collective engineering and transparent development.";;
        "GNU")
            note="GNU supplies a complete suite of free software tools, reinforcing user freedoms at every layer.";;
        *)
            note="";;
    esac
    printf " - %s: %s\n" "$tool" "$note"
done
printf "================================================================================\n"
