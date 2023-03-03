#! /bin/bash

echo "Atualizando Sistema........."
apt-get update -y
apt-get upgrade -y

echo "Instalando servidor web (Apache2)........"
apt-get install apache2 -y

echo "Copiando arquivos do site para pasta do apache /var/www/html......."
apt-get install unzip -y
cd /tmp
wget -q https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -q main.zip
cd /tmp/linux-site-dio-main
cp * -r /var/www/html/

echo "----------------"
echo "| Concluído :) |"
echo "----------------"
