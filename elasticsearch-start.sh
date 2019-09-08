#!/usr/bin/env bash

mkdir `pwd`/.v/elasticsearch/data/ -p
mkdir `pwd`/.v/elasticsearch/plugins/

docker stop elasticsearch
docker rm elasticsearch
docker run -idt -p 9200:9200 -p 9300:9300 \
	   	-v `pwd`/.v/elasticsearch/data:/usr/share/elasticsearch/data \
		-v `pwd`/.v/elasticsearch/plugins:/usr/share/elasticsearch/plugins \
		-e "discovery.type=single-node" \
		--name elasticsearch \
		docker.elastic.co/elasticsearch/elasticsearch:5.6.0
