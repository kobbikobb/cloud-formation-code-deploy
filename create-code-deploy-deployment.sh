#!/bin/bash

aws deploy create-deployment \
--application-name guessthename \
--deployment-group-name guessthename-dev \
--s3-location bucket=guessthename.codedeploy.bucket,key=code-deploy-docker-compose.zip,bundleType=zip