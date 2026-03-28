#!/bin/bash
# Script 1: System Identity Report
# Author: Sampada Mittal
# Course: Open Source Software
# Purpose: Display system identity and open source licence info

# ── Variables ─────────────────────────────────────────────────
STUDENT_NAME="Sampada Mittal"
SOFTWARE_CHOICE="Git"

# Command substitution: capture output of commands into variables
KERNEL=$(uname -r)                         # Linux kernel version
DISTRO=$(lsb_release -d | cut -f2)        # Distribution name
USER_NAME=$(whoami)                        # Current logged-in user
HOME_DIR=$HOME                             # Home directory path
UPTIME=$(uptime -p)                        # Human-readable uptime
CURRENT_DATE=$(date '+%A, %d %B %Y')      # Formatted date
CURRENT_TIME=$(date '+%H:%M:%S')          # Current time

# ── Display ───────────────────────────────────────────────────
echo "=================================================="
echo "   Open Source Audit — System Identity Report"
echo "   Student : $STUDENT_NAME"
echo "   Software: $SOFTWARE_CHOICE"
echo "=================================================="
echo ""
echo "  Kernel Version : $KERNEL"
echo "  Distribution   : $DISTRO"
echo "  Logged-in User : $USER_NAME"
echo "  Home Directory : $HOME_DIR"
echo "  System Uptime  : $UPTIME"
echo "  Date           : $CURRENT_DATE"
echo "  Time           : $CURRENT_TIME"
echo ""
echo "  OS Licence: GNU General Public License v2 (GPL v2)"
echo "  The Linux kernel is free software — you are free to"
echo "  run, study, modify, and redistribute it."
echo "=================================================="
