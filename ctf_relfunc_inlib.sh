#!/bin/sh

if [ $# -lt 2 ]
then
	echo 'arg1 : lib path'
	echo 'arg2 : function name'
	echo 'exp)'
	echo 'ctf_relfunc_inlib.sh /lib/i386-linux-gnu/libc.so.6 system'
	exit 1
fi

nm -D $1 | grep $2

