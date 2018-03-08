#!/bin/sh

if [ $# -lt 2 ]
then
	echo 'arg1 : format name'
	echo 'arg2 : target password file'
	echo 'exp)'
	echo 'ctf_john_ripper.sh NT tagetfile.txt'
	exit 1
fi

targetfile=$(readlink -f $2)
homedir=$(pwd)

cd $JOHN
./john --format=$1 $targetfile

cd $homedir

