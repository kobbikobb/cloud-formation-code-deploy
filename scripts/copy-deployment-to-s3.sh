#!/bin/bash

zip -vr deployment.zip deployment/

BUCKET=guessthename.codedeploy.bucket

aws s3 cp ../deployment.zip s3://$BUCKET/code-deploy-docker-compose.zip