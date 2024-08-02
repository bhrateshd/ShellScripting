#!/bin/bash

# Configuration
FROM="bhrateshd@gmail.com"
TO="bhrateshdhangar@gmail.com"
SUBJECT="Daily Report"

# Generate the report (you can replace this with your actual report generation logic)
REPORT_CONTENT="This is your daily report.\nEverything is running smoothly."

# Create the email content
EMAIL_CONTENT="Subject: $SUBJECT\nFrom: $FROM\nTo: $TO\n\n$REPORT_CONTENT"

# Send the email
echo -e "$EMAIL_CONTENT" | sendmail -t

echo "Daily report sent!"

