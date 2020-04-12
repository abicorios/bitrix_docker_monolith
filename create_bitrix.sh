#!/bin/bash
. .lib/reqs.sh
. .lib/created.sh
source config
if [ -d www ]
then
	echo sudo chown -R $USER:$USER www
	sudo chown -R $USER:$USER www
else
	echo mkdir www
	mkdir www
fi
echo docker build --rm --no-cache -t $project .
time docker build --rm --no-cache -t $project .
echo docker network create $project
docker network create $project
echo docker run --privileged --name $project --network $project -v $PWD/www:/home/bitrix/www -d $project
time docker run --privileged --name $project --network $project -v $PWD/www:/home/bitrix/www -d $project
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
./fix_permissions.sh
. .lib/get_ip.sh
xdg-open http://$ip>/dev/null 2>&1
