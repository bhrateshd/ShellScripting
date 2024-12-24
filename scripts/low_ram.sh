#!/bin/bash
TO="bhrateshd@gmail.com"
TH_L=400
free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_L ]]; then
	echo -e "Server is running with a low RAM Size\nAvailable RAM is: $free_RAM" \ /usr/bin/mailx -s "RAM INFO $(date)" $TO
