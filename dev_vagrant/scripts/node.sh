#! /bin/bash -vxe

node_version=0.10.24
url=http://nodejs.org/dist/v$node_version/node-v$node_version-linux-x64.tar.gz

# Download and install node to the /usr/ directory
sudo curl $url > /tmp/node-$node_version.tar.gz
sudo mkdir -p /usr/local/node-$node_version
sudo tar xzf /tmp/node-$node_version.tar.gz \
        -C /usr/local/node-$node_version --strip-components=1

sudo rm /tmp/node-$node_version.tar.gz

# Add it to the path
echo 'export PATH=$PATH:/usr/local/node-'$node_version'/bin' > /tmp/profile-nodejs.sh
sudo mv /tmp/profile-nodejs.sh /etc/profile.d/nodejs.sh
sudo chmod a+x /etc/profile.d/nodejs.sh

ls -la /etc/profile.d/nodejs.sh

. /etc/profile.d/nodejs.sh

# test it out
node --version
