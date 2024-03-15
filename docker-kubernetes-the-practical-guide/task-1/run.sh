#!/bin/bash


docker build node-app -t server
docker build python-app -t body-mass


docker run -p 80:3000 --rm -d server
docker run -i --rm body-mass
