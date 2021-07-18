#!/usr/bin/env bash

# removes prev docker installation if present
sudo apt-get remove docker docker-engine docker.io containerd runc

# update repositories list
apt-get update

# install packages that allow using repositories over http
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# add docker stable version repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update repositories list
apt-get update

# install docker
apt-get install -yqq docker-ce docker-ce-cli containerd.io python3-pip python3-dev curl gnupg

# verfiy that docker was installed
docker run hello-world

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
