#!/bin/bash

if [ ! "$(docker network ls | grep web)" ]; 
    then
        echo "Creating Web network ..."
        docker network create web
    else
        echo "Web network already exists... Skipping Step"
fi

docker-compose --env-file .env -f docker/docker-compose.development.yml up --build
read -p "Press any key to continue." x