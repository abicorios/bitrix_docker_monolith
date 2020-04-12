#!/bin/bash
. config
if [[ `docker network ls -f name=^$project$ | wc -l` == 2 ]]
then
	echo network $project already exists
	echo use or remove
	exit
fi
