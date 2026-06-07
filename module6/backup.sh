#!/bin/bash

LOCK_FILE="/tmp/backup.lock"

# Check arguments count
if [ "$#" -ne 2 ]; then
    echo "Usage: ./backup.sh <log_dir> <backup_dir>"
    exit 1
fi

LOG_DIR="$1"
BACKUP_DIR="$2"

# Check directories existence
if [ ! -d "$LOG_DIR" ] || [ ! -d "$BACKUP_DIR" ]; then
    echo "Usage: ./backup.sh <log_dir> <backup_dir>"
    exit 1
fi

# Check lock file
if [ -f "$LOCK_FILE" ]; then
    echo "Backup already running"
    exit 1
fi

# Create lock file
touch "$LOCK_FILE"

# Remove lock file on script exit
trap 'rm -f "$LOCK_FILE"' EXIT

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
ARCHIVE_NAME="logs_backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${BACKUP_DIR}/${ARCHIVE_NAME}"

# Create archive
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" . 2>/dev/null

# Check backup result
if [ $? -ne 0 ]; then
    echo "Backup failed"
    exit 2
fi

echo "Backup created: $(realpath "$ARCHIVE_PATH")"