#!/bin/bash
source config
docker container start $project
./.lib/get_ip.sh
