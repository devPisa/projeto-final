#!/bin/sh
#Espera o container iniciar para executar a instalação do plugin
while ! curl --silent --fail http://localhost:80; do
    sleep 2
done

# Instala e ativa o plugin Redis Object Cache
wp plugin install redis-cache --activate --allow-root

# Ativa o cache de objeto no wp-config.php
wp config set WP_REDIS_HOST redis --allow-root

# Reinicia o servidor Apache para garantir que as mudanças sejam aplicadas
apache2-foreground
