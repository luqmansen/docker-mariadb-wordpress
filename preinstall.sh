#!bin/bash


# Installl required package
sudo yum install docker
sudo systemctl enable docker.service
sudo systemctl start dcoker.service
sudo yum install epel-release
sudo yum upgrade python*
sudo yum install -y python3-pip
sudo pip3 install docker-compose 
docker-compose version


# Open http port in dynamic firewall
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd -reload
