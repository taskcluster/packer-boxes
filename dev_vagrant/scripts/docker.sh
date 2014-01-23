#! /bin/bash -vex
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"


# install docker
sudo apt-get update
sudo apt-get --force-yes -y install lxc-docker

# Add vagrant user to the docker group so we can use docker directly
sudo usermod -aG docker vagrant
