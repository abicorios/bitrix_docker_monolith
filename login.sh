#!/bin/bash
. .lib/reqs.sh
. .lib/not_created.sh
source config
docker exec -it $project bash
