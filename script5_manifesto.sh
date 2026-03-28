#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sampada Mittal
# Course: Open Source Software
# Purpose: Generate a personalised open source philosophy statement

echo "=================================================="
echo " Open Source Manifesto Generator"
echo " Answer three questions to build your manifesto."
echo "=================================================="
echo ""

# Interactive input using read
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capture current date and username
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# Define output filename
OUTPUT="manifesto_${AUTHOR}.txt"

# Write manifesto to file
echo "================================================" > "$OUTPUT"
echo " OPEN SOURCE MANIFESTO"                          >> "$OUTPUT"
echo " Author : $AUTHOR"                               >> "$OUTPUT"
echo " Date   : $DATE"                                 >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"
echo ""                                                >> "$OUTPUT"
echo "I believe in the power of open source software." >> "$OUTPUT"
echo ""                                                >> "$OUTPUT"
echo "Every day, I depend on $TOOL — a tool built"    >> "$OUTPUT"
echo "not for profit, but for the common good."        >> "$OUTPUT"
echo "To me, freedom in software means $FREEDOM:"     >> "$OUTPUT"
echo "the right to see, change, and share the tools"  >> "$OUTPUT"
echo "that shape our digital lives."                   >> "$OUTPUT"
echo ""                                                >> "$OUTPUT"
echo "One day, I hope to build $BUILD and release it" >> "$OUTPUT"
echo "freely — so that someone I will never meet can" >> "$OUTPUT"
echo "use it, improve it, and pass it forward."        >> "$OUTPUT"
echo ""                                                >> "$OUTPUT"
echo "That is what open source means to me."          >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"

echo ""
echo "Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
