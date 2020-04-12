#!/bin/bash
if [ ! `command -v docker` ]
then
        echo you mast install docker
        echo 'curl -s https://get.docker.com | sh'
        exit
fi
if [ ! `command -v xdg-open` ]
then
        echo xdg-open is recomended
        echo 'sudo apt update && sudo apt install -y xdg-utils'
else
        xdg_open_is_installed=1
fi
