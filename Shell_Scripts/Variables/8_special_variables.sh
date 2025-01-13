#!/bin/bash

func()
{
	echo -e "\nSpecial variables in function"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$* = ' $*
echo '$@ = ' $@
echo '$# = ' $#
echo '$$ = ' $$

}
### Main Program
echo "Special Variables for main program"
echo '$0 = ' $0
echo '$1 = ' $1
echo '$2 = ' $2
echo '$* = ' $*
echo '$@ = ' $@
echo '$# = ' $#
echo '$$ = ' $$


func
