#!/bin/bash
# ============================================================
# Script 3: Disk and Permission Auditor
# Author: Shreya Srivastava | Reg No: 24BCE10572
# Course: CSE0002 - Open Source Software
# Description: Loops through key system directories and reports
#              permissions, owner, and disk usage for each.
# ============================================================

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "       Disk and Permission Auditor            "
echo "       Auditor: Shreya Srivastava             "
echo "=============================================="
echo ""

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "  Directory : $DIR"
        echo "  Perms     : $PERMS"
        echo "  Size      : $SIZE"
        echo "  ---"
    else
        echo "  $DIR does not exist on this system."
        echo "  ---"
    fi
done

echo ""
echo "Audit completed for registration: 24BCE10572"
echo "=============================================="