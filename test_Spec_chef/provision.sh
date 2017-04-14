#  # # Destroy vagrant and re-run the Virtual machine 
#  # vagrant destroy --force && vagrant up
#  # ========================================================

# #!/bin/bash

# # update the source lists
# sudo apt-get update -y

# # Upgrade any package avaiable
# sudo apt-get upgrade -y

# # Package for git 
# sudo apt-get install git -y




# # install ruby dependencies
# sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev -y


# # install ruby from rbenv
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# ~/.rbenv/bin/rbenv install 2.4.0
# ~/.rbenv/bin/rbenv global 2.4.0'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc


#  # remove old version of ruby
#  sudo apt-get remove ruby -y

#  # Package "ruby" should be installed with version "2.4.0"
# ~/.rbenv/bin/rbenv install 2.4.0
# ~/.rbenv/bin/rbenv global 2.4.0

# # rehash rbenv
# ~/.rbenv/bin/rbenv rehash


# # Install gems

#  # Package "rails" should be installed by "gem"
#  sudo -H -u vagrant bash -i -c 'gem install rails'

#  # Package "bundler" should be installed by "gem"
#  sudo -H -u vagrant bash -i -c 'gem install bundler'

#  # Package "rake" should be installed by "gem"
#  sudo -H -u vagrant bash -i -c 'gem install rake'
 


#  # # Package "apache2" should be installed
#  # # Service "apache2" should be enabled
#  # # Service "apache2" should be running
#  # # Port "80" should be listening
#  sudo apt-get install apache2 -y


#  # ========================================================
# 					TEST TUTORIAL CHEF
# https://learn.chef.io/tutorials/learn-the-basics/ubuntu/virtualbox/set-up-a-machine-to-manage/
#  # ========================================================

sudo apt-get update
sudo apt-get -y install curl


curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable -v 0.18.30


sudo mkdir ~/chef-repo
cd ~/chef-repo

sudo touch hello.rb

sudo chmod +x hello.rb


sudo echo "file '/tmp/motd' do" >> hello.rb
sudo echo "  content 'hello world'" >> hello.rb
sudo echo "end" >> hello.rb



sudo chef-client --local-mode hello.rb

