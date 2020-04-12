#!/bin/bash
source config
if [[ `docker ps -f status=running -f name=^$project$ | wc -l` == 2 ]]
then
	ip=`docker exec $project hostname -I`
	echo ip: $ip
else
	echo container $project is not running
fi
