#!/bin/bash
# Script 4: Log File Analyser
# Author: Sampada Mittal
# Course: Open Source Software
# Purpose: Count keyword occurrences in a log file
# Usage  : ./script4_log_analyzer.sh /var/log/syslog error

# Command-line argument handling
LOGFILE=$1                    # First argument: path to log file
KEYWORD=${2:-"error"}         # Second argument: keyword (default: error)
COUNT=0                       # Initialise counter variable

# Validate that a log file was provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

# Validate that the file exists and is readable
if [ ! -f "$LOGFILE" ]; then
    echo "[ERROR] File not found: $LOGFILE"
    exit 1
fi

# Check if the file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "[WARNING] Log file is empty: $LOGFILE"
    exit 0
fi

echo "=================================================="
echo " Log File Analyser"
echo " File   : $LOGFILE"
echo " Keyword: '$KEYWORD'"
echo "=================================================="
echo ""

# While-read loop: read file line by line
while IFS= read -r LINE; do
    # Check if this line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo "  Keyword '$KEYWORD' found in $COUNT lines."
echo ""

# Print last 5 matching lines
echo "  Last 5 matching lines:"
echo "  ----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5 | while IFS= read -r MATCH; do
    echo "  >> $MATCH"
done

echo ""
echo "=================================================="
