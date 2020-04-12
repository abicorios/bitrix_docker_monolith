#!/bin/bash
if [ ! `command -v docker` ]
then
	echo you mast install docker
	echo 'curl -s https://get.docker.com | sh'
	exit
fi
