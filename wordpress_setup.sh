#!/bin/bash
#By Anggarda Saputra Wijaya
#Install Wordpress on Container
sudo apt-get update -y
sudo apt-get install curl software-properties-common docker.io -y
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo apt-get update -y
mkdir /home/portainer
mkdir /home/wordpress
mkdir /home/wordpress/wordpress_file
mkdir /home/wordpress/db_data
cp docker-portainer.yaml /home/portainer/docker-compose.yaml
cp docker-wordpress.yaml /home/wordpress/docker-compose.yaml
cd /home/portainer && docker-compose up -d
cd /home/wordpress && docker-compose up -d
docker ps -a
ufw allow 22
ufw allow 8080
ufw allow 19443
ufw enable
systemctl status ufw
