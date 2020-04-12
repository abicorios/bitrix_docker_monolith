#!/bin/bash
. config
if [[ `docker ps -a -f name=^$project$ | wc -l` == 2 ]]
then
	echo container $project already exists
	echo use or remove
	exit
fi
