#!/bin/bash
echo "Criando conteiner docker MariaDB"


cd ~
mkdir dados
cd dados


wget https://raw.githubusercontent.com/cleilsongurgel/projetos_docker/master/docker-compose.yml

sudo docker-compose up -d