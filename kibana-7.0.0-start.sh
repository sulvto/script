#!/usr/bin/env bash

docker stop kibana-7.0.0
docker rm kibana-7.0.0

docker run -d --name kibana-7.0.0 \
		-e "ELASTICSEARCH_URL=http://192.168.105.189:9300" \
	   	-e "xpack.security.enabled=false" \
	   	-p 5601:5601 \
		--net elasticsearch \
		kibana:7.0.0


