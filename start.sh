#!/bin/bash
. .lib/reqs.sh
source config
docker container start $project
./.lib/get_ip.sh
