#!/bin/bash

# update the source lists
sudo apt-get update -y

# Upgrade any package avaiable
sudo apt-get upgrade -y

# # Package for git 
# sudo apt-get install git -y

 # Package "ruby" should be installed with version "2.4.0"
 # Package "rails" should be installed by "gem"
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  \curl -sSL https://get.rvm.io | bash -s stable --ruby=2.4.0 --rails 


 # Package "bundler" should be installed by "gem"

 # Package "rake" should be installed by "gem"

 



 # # Package "apache2" should be installed
 # # Service "apache2" should be enabled
 # # Service "apache2" should be running
 # # Port "80" should be listening
 # sudo apt-get install apache2 -y