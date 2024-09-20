#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y

sudo git clone + o link do repositorio que quer clonar
cd + a pasta do repositorio    #abre o diretorio que contem a aplicação
sudo cp -R * /var/www/html     #copia para onde esta instalado o servidor apache




ip a     #encontra onde esta o ip do servidor que contem a aplicação (obs: na aws sera outro ip o EC2)




#Esse script realizara o deploy de forma automatica ele pode ser usado para subir uma VM EC2 AWS
