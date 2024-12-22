#!/bin/bash

# Define variables
BACKUP_SRC="/etc /home /var"  # Directories to back up (modify as needed)
BACKUP_DEST="/backup"         # Destination directory for backups
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DEST/system_backup_$TIMESTAMP.tar.gz"
LOG_FILE="/var/log/system_backup.log"

# Create destination directory if it doesn't exist
mkdir -p "$BACKUP_DEST"

# Function to log messages
log_message() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

# Start backup process
log_message "Starting backup process..."

# Perform backup and check if successful
tar -czf "$BACKUP_FILE" $BACKUP_SRC
if [ $? -eq 0 ]; then
    log_message "Backup completed successfully. File saved as: $BACKUP_FILE"
else
    log_message "Backup failed!"
    exit 1
fi

# Optional: delete backups older than 7 days
find "$BACKUP_DEST" -type f -name "*.tar.gz" -mtime +7 -exec rm -f {} \;
log_message "Old backups deleted (if any existed)."

# Finish
log_message "Backup process completed."

exit 0

