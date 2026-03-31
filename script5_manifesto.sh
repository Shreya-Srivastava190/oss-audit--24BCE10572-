#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Shreya Srivastava | Reg No: 24BCE10572
# Course: CSE0002 - Open Source Software
# Description: Interactively generates a personalized 
#              open source manifesto.
# ============================================================

echo "=============================================="
echo "     Open Source Manifesto Generator          "
echo "     Created by: Shreya Srivastava            "
echo "=============================================="
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_shreya_24BCE10572.txt"

echo "============================================" > "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO             " >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: Shreya Srivastava (24BCE10572)" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I, Shreya, am a student and practitioner of open source." >> "$OUTPUT"
echo "Every day, I rely on $TOOL." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I commit to this philosophy. One day, I will build" >> "$OUTPUT"
echo "$BUILD and release it freely." >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"

cat "$OUTPUT"
echo ""
echo "  Manifesto saved to: $OUTPUT"