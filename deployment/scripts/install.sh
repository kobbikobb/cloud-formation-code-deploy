#!/bin/bash

cd /home/ec2-user

docker-compose stop;
docker-compose rm -f;
docker-compose pull;
docker-compose up -d