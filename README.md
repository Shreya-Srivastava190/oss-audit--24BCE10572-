
## README: Open Source Software Audit & Toolset
# oss-audit--24BCE10572-
This repository contains a suite of five Bash scripts developed for the **CSE0002 - Open Source Software** course. These scripts are designed to perform system audits, inspect Free and Open Source Software (FOSS) packages, analyze logs, and generate personalized open-source manifestos.

---

## ## Scripts Overview

### 1. System Identity Report (`script1_identity.sh`)
Generates a comprehensive welcome screen and system report.
* **Student Details**: Shreya Srivastava (Reg No: 24BCE10572).
* **System Info**: Captures kernel version, distribution name, architecture, and uptime.
* **License Context**: Highlights the GNU General Public License version 2 (GPL v2) shared by both the Linux kernel and Git.

### 2. FOSS Package Inspector (`script2_inspector.sh`)
Inspects the status of **Git** on the local system.
* Checks if the package is installed using `dpkg`.
* Displays version, binary location, and license details.
* Includes a **Philosophy Note** using a `case` statement to explain the open-source history of tools like Git, Apache, and VLC.

### 3. Disk and Permission Auditor (`script3_auditor.sh`)
Performs a security and usage audit of key directories.
* **System Audit**: Iterates through `/etc`, `/var/log`, `/home`, etc., to report permissions, ownership, and disk usage.
* **Git Audit**: Specifically checks for global `.gitconfig` files and local `.git` repositories to ensure proper configuration.

### 4. Log File Analyzer (`script4_analyzer.sh`)
A functional utility to parse system logs for specific keywords.
* Reads files line-by-line using a `while-read` loop.
* Counts occurrences of a keyword, defaulting to "error" if none is provided.
* Outputs the last 5 matching lines for quick debugging and context.

### 5. Open Source Manifesto Generator (`script5_manifesto.sh`)
An interactive script that captures user values regarding open-source software.
* Asks three interactive questions about daily tools, the meaning of freedom, and future contributions.
* Generates a formatted `.txt` file (e.g., `manifesto_username.txt`) using file redirection.
* Cites the philosophy of **Linus Torvalds** and the importance of shared knowledge.

---

## ## Technical Requirements
* **Shell**: Bash (Bourne Again SHell).
* **Common Dependencies**: `grep`, `awk`, `du`, `dpkg`, `lsb_release`.
* **OS**: Primarily designed for Debian/Ubuntu-based Linux distributions.

## ## Usage
1.  **Make scripts executable**:
    ```bash
    chmod +x script*.sh
    ```
2.  **Run a specific script**:
    ```bash
    ./script1_identity.sh
    ./script4_analyzer.sh /var/log/syslog "warning"
    ```


