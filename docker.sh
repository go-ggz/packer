#!/bin/bash

echo -n "welcome ggz docker image."
which aptitude || apt-get -qqy install aptitude
aptitude -y update && aptitude -y install make git gcc libncurses5-dev
cd ~ && git clone https://github.com/appleboy/Shell-Script.git
cd Shell-Script && ./Ubuntu.sh -i docker
# create deploy user
echo -n "create deploy user"
useradd -m -s /bin/bash deploy
usermode -aG docker deploy
usermode -aG docker ubuntu

echo
echo "Install Completely!!"
echo
