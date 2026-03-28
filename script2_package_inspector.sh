#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sampada Mittal
# Course: Open Source Software
# Purpose: Inspect installed FOSS packages and their philosophy

PACKAGE="git"

echo "============================================"
echo " FOSS Package Inspector"
echo "============================================"
echo ""

# Check if Git is installed using dpkg
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "[OK] $PACKAGE is installed on this system."
    echo ""
    echo "Package details:"
    dpkg -l "$PACKAGE" | grep -E "^ii" | \
        awk '{print "  Version : "$3"\n  Architecture: "$4}'
    echo "  Licence : $(dpkg -s git | grep -i license | head -1)"
    echo ""
    echo "  Git self-reports version: $(git --version)"
else
    echo "[!!] $PACKAGE is NOT installed."
    echo "     Install it with: sudo apt install git"
fi

echo ""
echo "--------------------------------------------"
echo " Open Source Philosophy Notes"
echo "--------------------------------------------"

# Case statement: philosophy note per package
for PKG in git apache2 python3 vlc; do
    case $PKG in
        git)
            echo "  git      : Born from the BitKeeper crisis — freedom from"
            echo "             proprietary infrastructure, one commit at a time."
            ;;
        apache2)
            echo "  apache2  : The web server that built the open internet —"
            echo "             running since 1995, powering 30% of all websites."
            ;;
        python3)
            echo "  python3  : A language shaped entirely by community consensus —"
            echo "             readable by design, free by philosophy."
            ;;
        vlc)
            echo "  vlc      : Built by students who just wanted to stream video —"
            echo "             now plays anything, everywhere, for everyone."
            ;;
        *)
            echo "  $PKG     : An open source tool contributing to the commons."
            ;;
    esac
done

echo "============================================"
