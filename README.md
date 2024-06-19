<table>
  <tr>
    <td>
      Status : Concluido ✔️ 
    </td>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="20" width="110" src="https://img.shields.io/badge/version-3.8-purple">
    </td>
  </tr>
</table>

## Proposta de projeto

> O objeto fundamental do projeto foi construir um ambiente web manitorado para apresentar os conhecimentos obtidos durante o curso de versionamento e virtualização de código.

## Dados do projeto

- Titulo: Projeto de virtualização;
- Tipo: Aplicação web;
- Stakeholder: Biopark Educação.

## Tecnologias utilizadas

<table>
  <tr>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white&backgroundColor=white))">
    </td>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/Adminer-8A2BE2">   
    </td>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/Cadvisor-8A2BE2">    
    </td>
    <td>
      <img align="center" alt="Ally-HTML" height="30" width="170" src="https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white">
    </td>
  </tr>
  <tr>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=Prometheus&logoColor=white&backgroundColor=white)">
    </td>
    <td>
      <img align="center" alt="Ally-CSS" height="30" width="170" src="https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white&backgroundColor=white))">
    </td>
      <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white&backgroundColor=white)">
    </td>
    <td>
      <img align="center" alt="Ally-Bootstrap" height="30" width="170" src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white&backgroundColor=white))">    
    </td>
  </tr>
</table>

## Como rodar:
```sh
cd /

cd home

mkdir projetoVirtualizacao

cd projetoVirtualizacao

git clone https://github.com/devPisa/projeto-final.git

cd projeto-final/src

# Verifique se você esta na pasta correta ls na lista deve aparecer o arquivo docker-compose.yml

docker-compose up -d
```
- Apos o download e instalação das imagens, se tudo tiver correto, deverá apresentar o seguinte log no terminal:

```sh
Creating network "src_back" with the default driver
Creating src_redis_1         ... done
Creating src_cadvisor_1      ... done
Creating src_node-exporter_1 ... done
Creating src_db_1            ... done
Creating src_wordpress_1       ... done
Creating src_redis_exporter_1  ... done
Creating src_mysqld-exporter_1 ... done
Creating src_prometheus_1      ... done
Creating src_adminer_1         ... done
```

## Rotas da aplicação:
* Só funcionará com a aplicação rodando!

- Aplicação web em Wordpress - [Click aqui!](http://localhost:8080)
```sh
#Lembrar de armazenar a senha quando cria o usuario, pois posteriormente irá pedir para logar.
```

- Acesso ao banco de dados via adminer - [Click aqui!](http://localhost:8081)
```bash
#Login para acessar o adminer:

USER: wpuser
PASSWORD: wppass
DATABASE: wpdb

#Podera ver os insert no banco de dados atraves dos select na barra lateral, por exemplo: select wp_users, você verá todos usuários cadastrados.
```
- Acesso ao prometheus - [Click aqui!](http://localhost:9090/targets?search=)

- Acesso ao cadvisor para monitoramento dos containers - [Click aqui!](http://localhost:8084)

```bash
#Para desligar o servidor:

docker-compose down
```

## Observações e comandos uteis:

- Todo o projeto foi criado e testado via WSL;
- Você poderá ver todos containers rodando com o comando:
```sh
docker ps
``` 

## Versões:

```js
Docker 24.0.5
Ubuntu 22.04.1
Mysql latest
Wordpress latest
Adminer latest
Redis latest
Prometheus latest
Node latest
Cadvisor latest
```
## Autor

- Cesar Pisa;
