#!/usr/bin/env bash

docker stop kibana-7.1.1
docker rm kibana-7.1.1

docker run -d --name kibana-7.1.1 \
	   	-p 5601:5602 \
		--net elasticsearch \
		kibana:7.1.1


