#!/bin/bash
echo "Criando conteiner docker MariaDB"


cd ~
mkdir dados
cd dados


wget https://github.com/cleilsongurgel/projetos_docker/blob/master/docker-compose.yml

sudo docker-compose up -d