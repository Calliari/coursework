
# CREATE A NEW INSTANCE
 instance_id=`aws ec2 run-instances --image-id "ami-a58d0dc5" --security-group-ids "sg-4cf13437" --count 1 --instance-type "t2.micro" --key-name "EC2Key" --query 'Instances[0].InstanceId' --output text`


# Get the ip address of the newly started instance
echo "Starting instance..."
ip_address=`aws ec2 describe-instances --instance-ids $instance_id --output text --query 'Reservations[0].Instances[0].PublicIpAddress'`

echo "Instance created..."

## wait for the box to be ready for SSH
echo "Waiting for box to be ready..."
aws ec2 wait instance-running --instance-ids $instance_id

## Wait for SSH to be ready
echo "Waiting 30s for SSH to be ready..."
sleep 30

# copy the provisioning script to the box
echo "Uploading files..."
scp -i ~/.ssh/EC2Key.pem -o StrictHostKeyChecking=no ./provision.sh ubuntu@$ip_address:~/

# SSH into that box
echo "Connecting to box at $ip_address"
ssh -o StrictHostKeyChecking=no -i ~/.ssh/EC2Key.pem ubuntu@$ip_address << EOF

  cd ~/

  sudo ./provision.sh

EOF

# Create the AMI
timestamp=`date +"%s"`

echo "Creating Image..."
ami_id=`aws ec2 create-image --instance-id $instance_id --name "prod_$timestamp" --description "New Golden Image" --query="ImageId" --output text`

aws ec2 wait image-available --image-ids $ami_id
echo "AMI Created: $ami_id"

# Then shut down the box
echo "Shutting down..."
response=`aws ec2 terminate-instances --instance-ids "$instance_id"`

