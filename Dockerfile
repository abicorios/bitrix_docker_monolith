FROM centos/systemd

RUN mkdir /home/bitrix; chown -R 600:600 /home/bitrix

RUN yum -y install wget; yum install -y https://repo.percona.com/yum/percona-release-latest.noarch.rpm; cd; wget http://repos.1c-bitrix.ru/yum/bitrix-env.sh; chmod +x bitrix-env.sh

EXPOSE 80 443 9000 3306 11211

VOLUME /home/bitrix/www

CMD ["/usr/sbin/init"]
