# Activate your profile

- export AWS_PROFILE=user1

Create a simple CD pipeline in AWS


# Installing CodeDeploy Agent
sudo yum update
yum install -y ruby

# Download the agent (replace the region)
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status

# Logs
tail -f /var/log/aws/codedeploy-agent/codedeploy-agent.log

# Tag your instance
Environment Tag

# Create a Code Deploy application

# Create a Code Deploy group for your deployment

# Create a Bucket to store appspec.yaml