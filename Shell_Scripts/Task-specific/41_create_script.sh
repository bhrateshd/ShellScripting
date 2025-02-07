#!/bin/bash

read -p "Enter a name for the command: " my_comm
echo "Enter commands to write on script:"
read comm
read -p "Enter path to the directory containing the command: " comm_path

# Create script for custom command
echo "#!/bin/bash" > $my_comm.sh
echo "$comm" >> $my_comm.sh

# Make script executable
chmod +x $my_comm.sh

# Add script to PATH
export PATH="$PATH$comm_path/$my_comm.sh"

echo "A script called $my_comm has been created."
