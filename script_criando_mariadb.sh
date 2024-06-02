#!/bin/bash
echo "Criando conteiner docker MariaDB"


cd ~
mkdir dados
cd dados


wget https://raw.githubusercontent.com/cleilsongurgel/projetos_docker/master/docker-compose.yml?token=GHSAT0AAAAAACTC7EQHKNRXOYOHEKZ7T55YZS4OFQA

sudo docker-compose up -d