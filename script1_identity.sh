#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: Shreya Srivastava | Reg No: 24BCE10572
# Course: CSE0002 - Open Source Software
# Description: Displays system information as a welcome screen
#              before conducting the Git open source audit.
# ============================================================

# --- Student and software details ---
STUDENT_NAME="Shreya Srivastava"
REG_NO="24BCE10572"
SOFTWARE_CHOICE="Git"
SOFTWARE_LICENSE="GNU General Public License version 2 (GPL v2)"

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)                          # Kernel version
DISTRO=$(lsb_release -d | cut -f2)         # Distribution name
USER_NAME=$(whoami)                         # Current logged-in user
HOME_DIR=$HOME                             # Home directory of current user
UPTIME=$(uptime -p)                        # Human-readable uptime
DATE=$(date '+%d %B %Y, %H:%M:%S')        # Formatted date and time
ARCH=$(uname -m)                           # System architecture

# --- Display the identity report ---
echo "=============================================="
echo "       Open Source Audit — System Report      "
echo "=============================================="
echo ""
echo "  Student  : $STUDENT_NAME"
echo "  Reg No   : $REG_NO"
echo "  Software : $SOFTWARE_CHOICE"
echo ""
echo "----------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "----------------------------------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  Architecture : $ARCH"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $DATE"
echo ""
echo "----------------------------------------------"
echo "  LICENSE INFORMATION"
echo "----------------------------------------------"
echo "  OS License   : $SOFTWARE_LICENSE"
echo "  Note: Linux kernel is covered by GPL v2,"
echo "  the same license that covers Git itself."
echo "=============================================="