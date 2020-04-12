#!/bin/bash
. .lib/reqs.sh
. .lib/not_created.sh
source config
docker ps -a -f name=^$project$
./.lib/get_ip.sh
