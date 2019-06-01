#!/usr/bin/env bash

docker stop kibana
docker rm kibana

docker run -d --name kibana -e ELASTICSEARCH_URL=http://10.28.109.116:9200 -p 5601:5601 kibana:6.7.2

