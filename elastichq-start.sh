#!/usr/bin/env bash

docker stop elasticsearch-hq
docker rm elasticsearch-hq
docker run -idt -p 5022:5000 --name elasticsearch-hq elastichq/elasticsearch-hq
