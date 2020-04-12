#!/bin/bash
source config
if [ -d www ]
then
	echo sudo chown -R $USER:$USER www
	sudo chown -R $USER:$USER www
else
	echo mkdir www
	mkdir www
fi
echo sudo setfacl -b www
sudo setfacl -b www
echo sudo setfacl -Rm u:$USER:rwx www
sudo setfacl -Rm u:$USER:rwx www
echo sudo setfacl -Rdm u:$USER:rwx www
sudo setfacl -Rdm u:$USER:rwx www
echo docker build --rm --no-cache -t $project .
time docker build --rm --no-cache -t $project .
echo docker run --privileged --name $project -p 80:80 -p 443:443 -p 9000:9000 -p 3306:3306 -p 11211:11211 -v $PWD/www:/home/bitrix/www -d $project
time docker run --privileged --name $project -p 80:80 -p 443:443 -p 9000:9000 -p 3306:3306 -p 11211:11211 -v $PWD/www:/home/bitrix/www -d $project
echo docker exec $project umount /home/bitrix/www
docker exec $project umount /home/bitrix/www
echo docker exec $project rm -rf /home/bitrix/www
docker exec $project rm -rf /home/bitrix/www
echo docker exec $project /root/bitrix-env.sh
time docker exec $project /root/bitrix-env.sh
echo docker exec $project mv /home/bitrix/www{,.bac}
docker exec $project mv /home/bitrix/www{,.bac}
echo docker container restart $project
time docker container restart $project
echo docker exec $project rsync -az /home/bitrix/www.bac/ /home/bitrix/www/
docker exec $project rsync -az /home/bitrix/www.bac/ /home/bitrix/www/
