#!/bin/bash

output() {
  printf "\E[0;33;40m"
  echo $1
  printf "\E[0m"
}

output "welcome ggz docker image."
which aptitude || apt-get -qqy install aptitude
aptitude -y update && aptitude -y install make git gcc libncurses5-dev
cd ~ && git clone https://github.com/appleboy/Shell-Script.git
cd Shell-Script && ./Ubuntu.sh -i docker
# create deploy user
output "create deploy user"
useradd -m -s /bin/bash deploy
output "append docker group to deploy user"
usermod -aG docker deploy
output "append docker group to ubuntu user"
usermod -aG docker ubuntu

output
output "Install Completely!!"
output
