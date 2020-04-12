#!/bin/bash
. config
if [[ `docker images $project | wc -l` == 2 ]]
then
        echo image $project already exists
        echo use or remove
        exit
fi
if [[ `docker network ls -f name=^$project$ | wc -l` == 2 ]]
then
        echo network $project already exists
        echo use or remove
        exit
fi
if [[ `docker ps -a -f name=^$project$ | wc -l` == 2 ]]
then
        echo container $project already exists
        echo use or remove
        exit
fi
