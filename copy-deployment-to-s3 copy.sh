#!/bin/bash

zip -vr deployment.zip deployment/

aws s3 cp deployment.zip s3://guessthename.codedeploy.bucket/code-deploy-docker-compose.zip