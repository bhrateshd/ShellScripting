#!/bin/bash

username=bhratesh

useradd $username
echo `date |md5sum|cut -c 1-6` | passwd --stdin $username
echo "Username/Password = $username :: `date |md5sum|cut -c 1-6` "
change -d 0 $username
