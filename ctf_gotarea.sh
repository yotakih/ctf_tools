#!/bin/sh

if [ $# -lt 1 ]
then
	echo 'arg1 : elf file name'
	exit 1
fi

readelf -r $1

