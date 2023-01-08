Create a simple CD pipeline in AWS

# How to deploy with Cloud Formation

## Activate your profile
- export AWS_PROFILE=user1

## Create stacks
./ec2/create-ec2-stack.sh
./ec2/create-deploy-stack.sh 

# Upload and create deployment
./copy-deployment-to-s3 copy.sh
./create-code-deploy-deployment.sh

# How to deploy an application manually

## Create a ec2 serivce role
- Attach: AmazonS3ReadOnlyAccess

## Create code deploy role
- Attach: AWSCodeDeployRole, AWSCodeDeployRoleForECS

## Create a ec2 instance

sudo yum update
yum install -y ruby

### Installing CodeDeploy Agent
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

### Install Docker
amazon-linux-extras install docker -y
service docker start
systemctl enable docker
usermod -a -G docker ec2-user
chmod 666 /var/run/docker.sock

### Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
### Tag your instance
- Environment=Dev
- Application=guessthename

# Useful

## Logs for EC2 instance
- tail -f /var/log/aws/codedeploy-agent/codedeploy-agent.log
- sudo service codedeploy-agent status
