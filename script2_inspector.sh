#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Author: Shreya Srivastava | Reg No: 24BCE10572
# Course: CSE0002 - Open Source Software
# Description: Checks if Git is installed, prints its version
#              and license info, then uses a case statement to
#              display a philosophy note about the package.
# ============================================================

# --- Set the package to inspect ---
PACKAGE="git"

echo "=============================================="
echo "        FOSS Package Inspector               "
echo "=============================================="
echo "  Inspector: Shreya Srivastava (24BCE10572)"
echo ""

# --- Check if the package is installed using dpkg ---
if dpkg -l | grep -q "^ii.*$PACKAGE"; then
    echo "[OK] $PACKAGE is installed on this system."
    echo ""

    # --- Extract version and license info from dpkg ---
    echo "--- Package Details ---"
    dpkg -l | grep "^ii.*$PACKAGE " | awk '{print "Package  :", $2, "\nVersion  :", $3}'

    # --- Also show the git version directly ---
    echo "Git ver  : $(git --version)"
    echo ""

    # --- Show where the binary lives ---
    echo "Binary   : $(which git)"

else
    echo "[NOT FOUND] $PACKAGE is NOT installed."
    echo "To install, run: sudo apt install git"
fi

echo ""
echo "----------------------------------------------"
echo "  Open Source Philosophy Note"
echo "----------------------------------------------"

case $PACKAGE in
    git)
        echo "Git: Built by Linus Torvalds in 2005. Shreya notes that"
        echo "Git is proof that open source tools outlast corporate"
        echo "dependencies."
        ;;
    *)
        echo "$PACKAGE: An open source tool contributing to the"
        echo "global ecosystem of shared, auditable software."
        ;;
esac

echo "=============================================="