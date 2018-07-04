#!/bin/bash

echo -n "welcome ggz docker image."
which aptitude || apt-get -qqy install aptitude
aptitude -y update && aptitude -y install make git gcc libncurses5-dev
cd ~ && git clone https://github.com/appleboy/Shell-Script.git
cd Shell-Script && ./Ubuntu.sh -i docker
# create deploy user
echo -n "create deploy user"
useradd -m -s /bin/bash deploy
echo -n "append docker group to deploy user"
usermod -aG docker deploy
echo -n "append docker group to ubuntu user"
usermod -aG docker ubuntu

echo
echo "Install Completely!!"
echo
