#!/bin/bash
source config
docker ps -a -f name=^$project$
./get_ip.sh
