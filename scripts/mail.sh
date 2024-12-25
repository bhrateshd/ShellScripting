#!/bin/bash
'rm -rf file file1'
'rm -rf file.log'
df -h | sort -rnk5 | grep -Ev devtmpfs | grep -Ev tmpfs | awk '{print $5, $6}' | sed '$d' > file
df -h | sort -rnk5 | grep -Ev devtmpfs | grep -Ev tmpfs | awk '{print $5, $6}' | sed '$d' | awk 'BEGIN { FS="%" } { print $1 }' > file1

rm -f file.log
a=0
for i in 'cat file1'
do
	a=$(($a+1))
	if [ $i -gt 20 ]
	then 
		##echo 'sed -n ''$a'p' file | awk '{print $2}'
		'sed -n ''$a'p' file >> file.log'
		#echo 'sed -n ''$a'p' file'
	fi
done
cat file.log
mail -v -s "disk usage" root@localhost < /root/file.log
