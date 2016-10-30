#!bin/bash
docker rmi xaviercl/webapp:latest
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker pull xaviercl/webapp:latest
docker run -it -p 8099:5000 xaviercl/webapp:latest