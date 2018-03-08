#!/bin/sh

if [ $# -lt 2 ]
then
	echo 'arg1 : elf file name'
	echo 'arg2 : pop count'
	exit 1
fi

rp -f $1 -r $2 | grep pop

