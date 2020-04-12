#!/bin/bash
. .lib/reqs.sh
. .lib/not_created.sh
source config
docker container restart $project
./.lib/get_ip.sh
