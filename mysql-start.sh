#!/usr/bin/env bash

docker stop mysql
docker rm mysql

docker run -idt -p 3306:3306 -v `pwd`/.data/mysql:/var/lib/mysql --name mysql -e MYSQL_ROOT_PASSWORD=a111111 mysql:8.0
