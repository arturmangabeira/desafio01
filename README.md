# Comandos para executar o desafio01 - PFA
> Criar a rede para conexão entre os serviços:
```bash
$ docker network create desafio01
```
* ## Subir o serviço do mysql
    > Executar o comando para criar o container:
    ```bash
    $ docker run --name desafio01mysql --network=desafio01 -d -e MYSQL_ROOT_PASSWORD=desafio01  mysql/mysql-server:5.7
    ```
    > Acessar o conteiner do banco de dados:
    ```bash
    $ docker exec -it desafio01mysql 
    ```
    > Entrar no gerenciador do BD:
    ```bash
    $ mysql -uroot -p (desafio01)     
    ```
    > Executar o script que está na pasta mysql/scripts/CreateDatabase.sql
* ## Dentro da pasta node
    > Executar o comando para gerar a imagem:
    ```bash
    $ docker build -t arturmangabeira/nodejs .
    ```
    > Executar o container a partir da imagem criada :
    ```bash
    $ docker run --network=desafio01 -v $(pwd):/usr/src/app --name desafio01nodejs arturmangabeira/nodejs   
    ```
* ## Dentro da pasta nginx
    > Executar o comando para criar a imagem:
    ```bash
    $ docker build -t arturmangabeira/nginx .
    ```
    > Após execução da imagem, executar o container:
    ```bash
    $ docker run -d -p 8080:80 --network=desafio01 --name desafio01nginx arturmangabeira/nginx
    ```
Acessar a aplicação no navegador através do endereço: http://localhost:8080.

Imagem da aplicação nodejs criada no dockerhub pelo endereço: https://hub.docker.com/r/arturmangabeira/nodejs.