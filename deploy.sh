#!/usr/bin/env sh

docker login --username oauth --password ${OAUTH} cr.yandex

docker build -t cr.yandex/${REGISTRY_ID}/frontend ./frontend-VueJs
docker push cr.yandex/${REGISTRY_ID}/frontend

docker build -t cr.yandex/${REGISTRY_ID}/backend ./backend-JavaSpring
docker push cr.yandex/${REGISTRY_ID}/backend