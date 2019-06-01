#!/usr/bin/env bash

docker stop phpmyadmin
docker rm phpmyadmin

docker run --name phpmyadmin -d -e PMA_HOST=10.28.109.98 -e PMA_PASSWORD=123456 -e PMA_USER=root -p 8888:80 phpmyadmin/phpmyadmin
