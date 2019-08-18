#!/bin/bash 

cd `dirname $0`;
BASEDIR=$(pwd)
# PRONAME=`basename $BASEDIR`
if [ $# != 1 ];then
		echo $0 proname
		exit
fi
PRONAME=$1

if ! [ -d bin ] ; then
	mkdir bin
fi

gcc -o ./bin/$PRONAME "$PRONAME.c"
