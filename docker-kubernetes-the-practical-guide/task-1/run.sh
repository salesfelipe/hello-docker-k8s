#!/bin/bash

docker build node-app -t hello-world-server
docker build python-app -t body-mass-calculator

docker run -p 80:3000 --rm -d --name server hello-world-server
docker run -i --rm --name calc body-mass-calculator

docker stop server

