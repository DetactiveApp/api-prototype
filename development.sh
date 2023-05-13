if [ ! "$(docker network ls | grep web)" ]; 
    then
        echo "Creating Web network ..."
        docker network create web
    else
        echo "Web network already exists... Skipping Step"
fi

docker-compose up -d --build