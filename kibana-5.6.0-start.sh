#!/usr/bin/env bash

docker stop kibana-5.6.0
docker rm kibana-5.6.0

docker run -d --name kibana-5.6.0 \
		-e "ELASTICSEARCH_URL=http://192.168.0.110:9200" \
	   	-e "xpack.security.enabled=false" \
	   	-p 5601:5601 \
		kibana:5.6.0


