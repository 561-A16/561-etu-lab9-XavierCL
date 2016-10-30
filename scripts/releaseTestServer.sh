#!bin/bash
set -v
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi xaviercl/webapp:latest
docker pull xaviercl/webapp:latest
docker run -itd -p 8099:5000 xaviercl/webapp:latest