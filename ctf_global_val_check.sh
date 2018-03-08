#!/bin/sh

if [ $# -lt 2 ]
then
	echo 'arg1 : elf file name'
	echo 'arg2 : val name'
	exit 1
fi

readelf -s $1 | grep $2

