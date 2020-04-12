#!/bin/bash
. .lib/checks.sh
source config
docker container restart $project
./.lib/get_ip.sh
