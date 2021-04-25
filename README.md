# Comandos para executar o desafio01 - PFA

* ## Dentro da pasta mysql
    > Executar o comando para criar a imagem:
    ```bash
    $ sudo docker build -t mysqldbdesafio01 .
    ```
    > Após execução da imagem, subir o container:
    ```bash
    docker run -d -p 3306:3306 --network=desafio01 -e MYSQL_ROOT_PASSWORD=dbfullcycle -e MYSQL_DATABASE=fullcycle mysqldbdesafio01    
    ``` 
* ## Dentro da pasta node
    > Executar o container a partir da imagem criada no dockerhub:
    ```bash
    $ sudo docker run arturmangabeira/nodejs --network=desafio01 -p 3000:3000 -v $(pwd):/usr/src/app     
    ```
* ## Dentro da pasta nginx
    > Executar o comando para criar a imagem:
    ```bash
    $ sudo docker build -t nginxdesafio01 .
    ```
    > Após execução da imagem, executar o container:
    ```bash
    docker run -d -p 8080:80 --network=desafio01 nginxdesafio01
    ```
Acessar a aplicação no navegador através do endereço: http://localhost:8080.          