# OSS Audit — Git

Student Name: Sampada Mittal
Roll Number: 24MIM10124
Course: Open Source Software (NGMC)
Software: Git

## About
This repository contains 5 shell scripts for the OSS Capstone Project audit of Git.

## Scripts
| Script | File | What it does |
|--------|------|-------------|
| Script 1 | script1_system_identity.sh | Displays system info and OS licence |
| Script 2 | script2_package_inspector.sh | Checks if Git is installed and shows package details |
| Script 3 | script3_disk_auditor.sh | Audits directory permissions and disk usage |
| Script 4 | script4_log_analyzer.sh | Counts keywords in a log file |
| Script 5 | script5_manifesto.sh | Generates a personalised open source manifesto |

## How to Run
1. Clone this repo:
   git clone https://github.com/s-mittal-632/oss-audit-24MIM10124

2. Go into the folder:
   cd oss-audit-24MIM10124

3. Give permission to all scripts:
   chmod +x *.sh

4. Run any script:
   ./script1_system_identity.sh
   ./script4_log_analyzer.sh /var/log/dpkg.log install

## Requirements
- Ubuntu Linux
- Git installed: sudo apt install git
- lsb-release installed: sudo apt install lsb-release
