# bitrix_docker_monolith
Bitrix в одном монолитном контейнере
# Статус
Тест
# Требования
Операционная система: Ubuntu 18 или новее. На других версиях может работать, но не тестировалось. Должен быть установлен Docker, [согласно инструкции](https://docs.docker.com/engine/install/ubuntu/). В случае запуска команд без чтения текста, выполните:
```
curl -s https://get.docker.com | sh
```
Добавьте себя в группу `docker` для выполнения команд без `sudo`:
```
sudo usermod -aG docker $USER && exit
```
Откройте терминал заново. Теперь без ошибок прав доступа должна выпониться команда:
```
docker ps
```
Также должен быть установлен Git:
```
sudo apt update && sudo apt install -y git
```
# Использование
Создайте проект:
```
git clone https://github.com/abicorios/bitrix_docker_monolith projectname
```
Создание образа:
```
docker build --rm --no-cache -t c7 .
```
Запуск контейнера:
```
docker run --privileged --name c7 -p 80:80 -p 443:443 -p 9000:9000 -p 3306:3306 -p 11211:11211 -d c7
```
Логин в контейнер:
```
docker exec -it c7 bash
```
Установка окружения Битрикс:
```
cd
./bitrix-env.sh
```
Выходи из контейнера:
```
exit
```
Открытие сайта: `127.0.0.1` в браузере.
Остановка контейнера:
```
docker container stop c7
```
Повторный запуск контейнера:
```
docker container start c7
```
Удаление остановленного контейнера:
```
docker container rm c7
```
Удаление образа:
```
docker image rm c7
```
