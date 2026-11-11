#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="/var/log/auto-patch.log"

if [[ $EUID -ne 0 ]]; then
   echo "[ERROR] This script must be run with root privileges (sudo)." | tee -a "$LOG_FILE"
   exit 1
fi

echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Starting Linux system patch check..." | tee -a "$LOG_FILE"

if command -v apt-get &> /dev/null; then
    apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
    apt-get autoremove -y
elif command -v yum &> /dev/null; then
    yum update -y
else
    echo "[ERROR] No supported package manager (apt/yum) found." | tee -a "$LOG_FILE"
    exit 1
fi

echo "[SUCCESS] $(date '+%Y-%m-%d %H:%M:%S') - System patching completed." | tee -a "$LOG_FILE"
