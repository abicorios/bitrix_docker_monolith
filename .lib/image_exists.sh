#!/bin/bash
. config
if [[ `docker images $project | wc -l` == 2 ]]
then
	echo image $project already exists
	echo use or remove
	exit
fi
