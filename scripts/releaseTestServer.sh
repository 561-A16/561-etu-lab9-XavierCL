#!bin/bash
set -e
docker rmi xaviercl/webapp:latest
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker load -i $HOME/webapp.tar
docker run -it -p 8099:5000 xaviercl/webapp:latest