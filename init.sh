#!/bin/bash
set -e

# Copiar o arquivo de configuração do Apache se não existir
if [ ! -f "/etc/apache2/apache2.conf" ]; then
    cp /etc/apache2/apache2.conf.orig /etc/apache2/apache2.conf
fi

# Definir o ServerName para evitar mensagens de aviso
echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Executar o comando padrão (start do Apache, por exemplo)
exec "$@"
