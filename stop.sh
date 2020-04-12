#!/bin/bash
. .lib/checks.sh
source config
docker container stop $project
