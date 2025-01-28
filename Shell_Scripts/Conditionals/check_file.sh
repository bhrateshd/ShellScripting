#!/bin/bash

#!/bin/bash

id=$(id -u)  # Get the user ID (197609 indicates a non-root user on some systems like Git Bash)
read -p 'Enter Filename: ' file  # Prompt the user to enter a filename

# Check if the user is root (id=0) and if the file exists
if [ "$id" -eq 0 ] && [ -f "$file" ]; then
    echo "You are a root user"
    echo "File $file exists"
else
    if [ "$id" -ne 0 ]; then
        echo "You are not a root user (User ID: $id)"
    fi
    if [ ! -f "$file" ]; then
        echo "File $file does not exist"
    fi
fi

# Alternative concise condition for root and file check
[ "$id" -eq 0 ] && [ -f "$file" ] && echo "You are a root user and the file exists."




#id=$(id -u)
#read -p 'Enter Filename: ' file

#if [ $id -eq 0 -a -f "$file" ]; then
#	echo "You are a root user"
#	echo "File $file exist"
#fi
#[ $id -eq 0 ] && [ -f "$file" ] && echo "You are a root user"


