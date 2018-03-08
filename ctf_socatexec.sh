#!/bin/sh

if [ $# -lt 2 ]
then
	echo 'arg1 : listen port no'
	echo 'arg2 : elf file name'
	exit 1
fi

socat TCP-LISTEN:$1,reuseaddr,fork EXEC:$2

