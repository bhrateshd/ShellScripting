
#!/bin/bash
MENU(){
echo -e "\e[4Monitoring Menu\e[0m "
echo
echo "1. Check Memory"
echo "2. Check CPU Load"
echo "3. Check Disk Usage"
echo "4. Exit"

read -p 'Select a Value>' val
}
##Main  program

while true; do
	MENU

case $val in
	1) echo "Total Memory = $(free -m |awk '/^Mem/ {print $2}')"
		 echo "Free Memory = $(free -m |awk '/^Mem/ {print $4}')"
		 ;;
	 2) echo "Cup Load = $(uptime |awk -F ', ' '{print $NF}' | awk -F 'load average: ' '{print $2}')" ;;
	 3) echo "Total Size = $(df -h / |grep -v Filesystem |awk '{print $2}')"
	    echo "Free  Size = $(df -h / |grep -v Filesystem |awk '{print $4}')"
	    	;;
	4) echo "Exiting the script. Goodbye!"
           exit 
	   ;;
	*) echo -e "\n\e[31m Select a Proper value\e[0m\n"
		;;
esac

echo 
read -p "Press Enter to return to the menu..."
echo
done
