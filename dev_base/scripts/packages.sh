#!/bin/bash -vex
# Updating and Upgrading dependencies
sudo apt-get update -y -qq > /dev/null
sudo apt-get upgrade -y -qq > /dev/null

# Install necessary libraries for guest additions and Vagrant NFS Share
sudo apt-get -y -q install \
  linux-headers-$(uname -r) \
  build-essential \
  dkms \
  nfs-common \
  perl \
  curl \
  wget \
  git

sudo apt-get clean
