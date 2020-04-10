# bitrix_docker_monolith
Bitrix в одном монолитном контейнере
# Статус
Тест
# Использование
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
