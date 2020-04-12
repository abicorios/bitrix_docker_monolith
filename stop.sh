#!/bin/bash
. .lib/reqs.sh
. .lib/not_created.sh
source config
docker container stop $project
