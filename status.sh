#!/bin/bash
. .lib/checks.sh
source config
docker ps -a -f name=^$project$
./.lib/get_ip.sh
