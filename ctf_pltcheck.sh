#!/bin/sh

if [ "$1" = "" ]
then
	echo 'arg1 : elf file name'
	exit 1
fi

objdump -d -M intel -j .plt --no $1
