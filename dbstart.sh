#!/bin/bash

docker-compose up -d

sleep 5

docker exec mongo1 bash /scripts/init.sh

sleep 5

docker-compose -f docker-compose.yml -f docker-compose.auth.yml up -d
