#!/bin/bash

NODE_IMAGE="hello-world-server"
PYTHON_IMAGE="body-mass-calculator"
SERVER_CONTAINER_NAME="server"

docker build node-app -t $NODE_IMAGE
docker build python-app -t $PYTHON_IMAGE

docker run -p 80:3000 --rm -d --name $SERVER_CONTAINER_NAME $NODE_IMAGE
docker run -i --rm --name calc $PYTHON_IMAGE

docker stop $SERVER_CONTAINER_NAME

docker image rm $NODE_IMAGE
docker image rm $PYTHON_IMAGE
