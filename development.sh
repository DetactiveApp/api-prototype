#!/bin/bash

if [ ! "$(docker network ls | grep web)" ]; 
    then
        echo "Creating Web network ..."
        docker network create web
    else
        echo "Web network already exists... Skipping Step"
fi

docker-compose --env-file .env -f docker/docker-compose.development.yml up --build

docker system prune --force --all --filter "until=24h"
read -p "Press any key to continue." x