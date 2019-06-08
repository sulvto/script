#!/usr/bin/env bash

docker stop kibana-7.1.1
docker rm kibana-7.1.1

docker run -d --name kibana-7.1.1 \
		-e "ELASTICSEARCH_URL=http://192.168.0.110:9200" \
	   	-e "xpack.security.enabled=false" \
	   	-p 5601:5601 \
		kibana:7.1.1


