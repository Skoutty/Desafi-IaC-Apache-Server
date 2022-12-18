#!bin/bash

echo "Atualizando servidor...."
apt-get update
apt-get upgrade
echo "Finalizado"

echo "Instalando Aplicação Web..."
apt-get install apache2 -y
echo "Finalizado"

echo "Verificando status Apache..."

systemctl status apache2

echo "Finalizado"

echo "Instalando unzip..."
apt-get install unzip -y
echo "Finalizado"

echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
echo "Finalizado"

echo "Copiando arquivos..."
cp -R ./linux-site-dio-main/* /var/www/html
echo "Finalizado"
echo "Processo finalizado"
