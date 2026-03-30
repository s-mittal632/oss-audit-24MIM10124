# OSS Audit — Git

Student Name: Sampada Mittal
Roll Number: 24MIM10124
Course: Open Source Software (NGMC)
Software: Git

## About
This repository contains 5 shell scripts for the OSS Capstone Project audit of Git, a distributed version control system created by Linus Torvalds in 2005 and released under the GNU General Public License v2.

## Environment Setup
1. Make sure you are running Ubuntu Linux
2. Open terminal (Ctrl + Alt + T)
3. Update your system:
   sudo apt update
4. Install Git:
   sudo apt install git -y
5. Install lsb-release:
   sudo apt install lsb-release -y
6. Verify Git is installed:
   git --version

## How to Clone and Run
1. Clone this repo:
   git clone https://github.com/s-mittal632/oss-audit-24MIM10124

2. Go into the folder:
   cd oss-audit-24MIM10124

3. Give permission to all scripts:
   chmod +x *.sh

## Scripts
| Script | File | What it does |
|--------|------|-------------|
| Script 1 | script1_system_identity.sh | Displays system info and OS licence |
| Script 2 | script2_package_inspector.sh | Checks if Git is installed and shows package details |
| Script 3 | script3_disk_auditor.sh | Audits directory permissions and disk usage |
| Script 4 | script4_log_analyzer.sh | Counts keywords in a log file |
| Script 5 | script5_manifesto.sh | Generates a personalised open source manifesto |

## How to Run Each Script
Run Script 1:
   ./script1_system_identity.sh

Run Script 2:
   ./script2_package_inspector.sh

Run Script 3:
   ./script3_disk_auditor.sh

Run Script 4:
   ./script4_log_analyzer.sh /var/log/dpkg.log install

Run Script 5:
   ./script5_manifesto.sh
   (It will ask 3 questions — type your answers and press Enter)

## Dependencies
- Ubuntu Linux (tested on Ubuntu 24.04.3 LTS)
- Git: sudo apt install git
- lsb-release: sudo apt install lsb-release
- Bash (pre-installed on Ubuntu)
