#!/bin/bash
. .lib/checks.sh
source config
echo docker container stop $project
docker container stop $project
echo docker container rm $project
docker container rm $project
echo docker image rm $project
docker image rm $project
echo docker network rm $project
docker network rm $project
