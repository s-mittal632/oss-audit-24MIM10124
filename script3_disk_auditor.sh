#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sampada Mittal
# Course: Open Source Software
# Purpose: Audit disk usage and permissions of key directories

# Array of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/share/git-core")

echo "=================================================="
echo " Directory Audit Report"
echo " Generated: $(date '+%d %B %Y %H:%M:%S')"
echo "=================================================="
echo ""
printf "%-30s %-25s %-10s\n" "Directory" "Permissions/Owner" "Size"
printf "%-30s %-25s %-10s\n" "---------" "-----------------" "----"

# For loop: iterate through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-30s %-25s %-10s\n" "$DIR" "$PERMS" "${SIZE:-N/A}"
    else
        printf "%-30s %-25s %-10s\n" "$DIR" "[NOT FOUND]" "-"
    fi
done

echo ""
echo "--------------------------------------------------"
echo " Git Configuration Audit"
echo "--------------------------------------------------"

# Check Git specific config locations
GIT_CONFIGS=("/etc/gitconfig" "$HOME/.gitconfig" "$HOME/.config/git/config")

for CFG in "${GIT_CONFIGS[@]}"; do
    if [ -f "$CFG" ]; then
        PERMS=$(ls -la "$CFG" | awk '{print $1, $3, $4}')
        echo "  [FOUND]  $CFG"
        echo "           Permissions: $PERMS"
    else
        echo "  [ABSENT] $CFG"
    fi
done

echo "=================================================="
