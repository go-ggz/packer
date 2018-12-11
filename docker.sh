#!/bin/bash

set -e

output() {
  printf "\E[0;33;40m"
  echo $1
  printf "\E[0m"
}

output "welcome ggz docker image."
which aptitude || apt-get -qqy install aptitude
output "install git gcc libncurses5-dev package."
aptitude -y update && aptitude -y install make git gcc libncurses5-dev mosh
output "Install docker daemon"
wget -qO- https://get.docker.com/ | sh
output "Install docker compose"
curl -L "https://github.com/docker/compose/releases/download/1.21.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
output "Show docker-compose version"
docker-compose --version
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
