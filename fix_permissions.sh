#!/bin/bash
echo sudo setfacl -bR www
sudo setfacl -bR www
echo sudo setfacl -Rm u:$USER:rwx,d:u:$USER:rwx,u:600:rwx,d:u:600:rwx www
sudo setfacl -Rm u:$USER:rwx,d:u:$USER:rwx,u:600:rwx,d:u:600:rwx www
