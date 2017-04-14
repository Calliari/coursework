# instance_id=`aws ec2 run-instances --image-id "ami-a58d0dc5" --security-group-ids "sg-4cf13437" --count 1 --instance-type "t2.micro" --key-name "EC2Key" --query 'Instances[0].InstanceId' --output text`

# # All atytributes fo the box
# # aws ec2 describe-instances --instance-ids "$instance_id" 

# # Get the ip address of all bax that are running
# # aws ec2 describe-instances \
# #   --query "Reservations[*].Instances[*].PublicIpAddress" \
# #   --output=text

# # Get the ip address of the newly started instancey
#   instance_ip=`aws ec2 describe-instances --instance-ids "$instance_id" --query "Reservations[*].Instances[*].PublicIpAddress" --output=text`

# # SSH into that box
#  instance_key=`aws ec2 describe-instances --instance-ids "$instance_id" --query "Reservations[*].Instances[*].KeyName" --output=text`

#  ssh -i /Users/Caliari/.ssh/"$instance_key".pem -o StrictHostKeyChecking=no ubuntu@"$instance_ip"
#   sudo chmod +x "$instance_key".pem


# # Clone down your provisiopning script ( to set to the server )

# # Run it

# # Then shut donw the box

#   aws ec2 terminate-instances --instance-ids "$instance_id"



# #  sudo chmod 400 EC2Key.pem
# #  $ aws ec2 run-instances  --query 'Instances[0].InstanceId' "i-ec3e1e2k"

# #  $ aws ec2 describe-instances --instance-ids "$instance_id" --query 'Reservations[0].Instances[0].PublicIpAddress'
# # "54.183.22.255"
# # ssh -i devenv-key.pem ubuntu@54.183.22.255



# # ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=10 -i /home/local/user/.ssh/mykey.pem hadoop@ec2-52-52-41-150.us-west-2.compute.amazonaws.com
# # # 



################# Stephen code ##################################

# the file called build.sh contains all the packages and configuration for a virtual machine

####### install nodejs   ########################################
sudo apt-get install nodejs -y
