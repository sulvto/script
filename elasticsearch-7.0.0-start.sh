#!/usr/bin/env bash

mkdir `pwd`/.v/elasticsearch-7.0.0/data/ -p
mkdir `pwd`/.v/elasticsearch-7.0.0/plugins/

docker stop elasticsearch
docker rm elasticsearch

docker network create elasticsearch

docker run -idt -p 9200:9200 -p 9300:9300 \
		--net elasticsearch \
	   	-v `pwd`/.v/elasticsearch-7.0.0/data:/usr/share/elasticsearch/data \
		-v `pwd`/.v/elasticsearch-7.0.0/plugins:/usr/share/elasticsearch/plugins \
		-e "discovery.type=single-node" \
		--name elasticsearch \
		docker.elastic.co/elasticsearch/elasticsearch:7.0.0
