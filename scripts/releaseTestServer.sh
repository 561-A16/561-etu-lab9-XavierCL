#!bin/bash
set -v
docker stop xaviercldotnet
docker rm xaviercldotnet
docker rmi xaviercl/webapp:latest
docker pull xaviercl/webapp:latest
docker run -itd -name xaviercldotnet -p 8099:5000 xaviercl/webapp:latest