#!/bin/bash

echo "Iniciando o script de provisionamento"
echo "Instalando pacotes..."
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common git -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

sudo apt install docker-ce -y
 
sudo systemctl enable docker 


sudo groupadd docker
sudo usermod -aG docker ${USER}

sudo systemctl restart docker
