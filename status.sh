#!/bin/bash
source config
docker ps -a -f name=^$project$
./.lib/get_ip.sh
