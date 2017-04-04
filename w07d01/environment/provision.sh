#!/bin/bash

# Update the souces list
sudo apt-get update -y

# Upgrade any packages available
sudo apt-get upgrade -y

# Install the package for nginx
sudo apt-get install nginx -y

# install node.js  version 7
sudo npm cache clean -f
sudo apt-get install -y nodejs

# install node.js  version 7
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install -y nodejs


# install the pm2 from npm
npm install -g pm2

#  Install the git 
apt-get install git -y



# npm install
# node app.js

