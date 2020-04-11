#!/bin/bash
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
echo docker build --rm --no-cache -t c7 .
time docker build --rm --no-cache -t c7 .
echo docker run --privileged --userns=host --name c7 -p 80:80 -p 443:443 -p 9000:9000 -p 3306:3306 -p 11211:11211 -v $PWD/www:/home/bitrix/www -d c7
time docker run --name c7 -p 80:80 -p 443:443 -p 9000:9000 -p 3306:3306 -p 11211:11211 -v $PWD/www:/home/bitrix/www:Z -d c7
echo docker exec c7 umount /home/bitrix/www
docker exec c7 umount /home/bitrix/www
echo docker exec c7 rm -rf /home/bitrix/www
docker exec c7 rm -rf /home/bitrix/www
echo docker exec c7 /root/bitrix-env.sh
time docker exec c7 /root/bitrix-env.sh
echo docker exec c7 mv /home/bitrix/www{,.bac}
docker exec c7 mv /home/bitrix/www{,.bac}
echo docker container restart c7
time docker container restart c7
echo docker exec c7 rsync -az /home/bitrix/www.bac/ /home/bitrix/www/
docker exec c7 rsync -az /home/bitrix/www.bac/ /home/bitrix/www/
