#!/bin/bash

DB_NAME="my_database"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql"

mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" $DB_NAME > $BACKUP_FILE

if [ $? -eq 0 ]; then
    echo "Database backup successful: $BACKUP_FILE"
else
    echo "Database backup failed!"
fi

