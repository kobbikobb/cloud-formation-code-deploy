Create a simple deployment in AWS

# How to deploy with Cloud Formation

## Activate your profile
- export AWS_PROFILE=user1

## Create stacks
./cloud-formation/ec2/create-ec2-stack.sh
./cloud-formation/deploy/create-deploy-stack.sh 

# Upload and create a deployment
./scripts/create-s3 copy.sh
./scripts/copy-deployment-to-s3 copy.sh
./scripts/create-code-deploy-deployment.sh

# Useful

## Check status of the code deploy agent
- sudo service codedeploy-agent status

## View logs for the Code Deploy agent
- tail -f /var/log/aws/codedeploy-agent/codedeploy-agent.log
