#!/bin/bash
source config
docker container restart $project
./.lib/get_ip.sh
