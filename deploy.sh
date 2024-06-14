#!/usr/bin/env sh

docker login --username oauth --password ${OAUTH} cr.yandex

# Вытягиваем официальный образ nginx
docker pull nginx

# Переименовываем и пушим образ в ваш реестр
docker tag nginx cr.yandex/${REGISTRY_ID}/nginx
docker push cr.yandex/${REGISTRY_ID}/nginx

docker build -t cr.yandex/${REGISTRY_ID}/frontend ./frontend-VueJs
docker push cr.yandex/${REGISTRY_ID}/frontend

docker build -t cr.yandex/${REGISTRY_ID}/backend ./backend-JavaSpring
docker push cr.yandex/${REGISTRY_ID}/backend