#!/bin/bash
source config
echo docker container stop $project
docker container stop $project
echo docker container rm $project
docker container rm $project
echo docker image rm $project
docker image rm $project
