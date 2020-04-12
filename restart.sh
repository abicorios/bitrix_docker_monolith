#!/bin/bash
. .lib/reqs.sh
source config
docker container restart $project
./.lib/get_ip.sh
