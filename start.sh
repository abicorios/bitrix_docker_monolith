#!/bin/bash
. .lib/checks.sh
source config
docker container start $project
./.lib/get_ip.sh
