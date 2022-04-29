#!/bin/bash

# Atualizando os pacotes
apt-get update
apt-get upgrade

# Instalando os pacotes apache, wget, zip e unzip
apt install apache2
apt install wget
apt install zip unzip
# Nao precisava do git

# Fazendo download do arquivo
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

# Descompactando o arquivo na pasta apache2
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip  -d /var/www/html

# Deletando arquivo index
rm /var/www/html/index.html

# Enviando o arquivo para o servidor
mv /var/www/html/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-completo.html /var/www/html/cv-completo.html
mv /var/www/html/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/style.css /var/www/html/style.css
mv /var/www/html/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-resumido.html /var/www/html/index.html

# Removendo pasta
rm -r /var/www/html/873219-690e1f604dc8ead2583589e1aee6f8a42040a035

# Inicializando o servidor
/etc/init.d/apache2 start
