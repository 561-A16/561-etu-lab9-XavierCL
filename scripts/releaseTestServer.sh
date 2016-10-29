#!bin/bash
set -e
docker load -i $HOME/webapp.tar
docker run -it -p 8080:5000 xaviercl/webapp:latest