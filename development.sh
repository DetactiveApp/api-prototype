if [ ! "$(docker network ls | grep web)" ]; 
    then
        echo "Creating Web network ..."
        docker network create web
    else
        echo "Web network already exists... Skipping Step"
fi

docker-compose -f ./env/docker-compose.development.yml up --build