#!/bin/bash
# ============================================================
# Script 4: Log File Analyzer
# Author: Shreya Srivastava | Reg No: 24BCE10572
# Course: CSE0002 - Open Source Software
# Description: Reads a log file line by line, counts lines
#              matching a keyword, and prints the last 5 matches.
# ============================================================

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_analyzer.sh <logfile> [keyword]"
    exit 1
fi

echo "=============================================="
echo "          Log File Analyzer                   "
echo "  Analyst: Shreya Srivastava (24BCE10572)"
echo "=============================================="
echo ""

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "  Result: Keyword '$KEYWORD' found $COUNT time(s)."
echo ""
echo "--- Last 5 lines containing '$KEYWORD' ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=============================================="