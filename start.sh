#!/bin/bash
source config
docker container start $project
./get_ip.sh
