

create database desafio01;

use desafio01;

CREATE TABLE modulo_cursos (
    id integer not null ,
    ativo boolean not null,
    nome varchar(50) not null,
    descricao varchar(2000) not null    
);

ALTER TABLE modulo_cursos  ADD PRIMARY KEY (id);

ALTER TABLE modulo_cursos MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'Docker', 'Curso de Docker');
INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'RabbitMq', 'Curso de RabbitMq');
INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'Comunicação', 'Curso de Comunicação');
INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'DDD', 'Curso de DDD');
INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'MicroServiço: Laravel (Back-end)', 'Curso de Laravel');
INSERT INTO modulo_cursos (ativo, nome, descricao) VALUES (1, 'MicroServiço: React (Front-End)', 'Curso de React');

--CRIA O USER PARA ACESSAR AO BANCO DE DADOS PELA APLICACAO EXTERNA.

CREATE USER 'userdesafio'@'%' IDENTIFIED BY 'desafio01';

GRANT ALL PRIVILEGES ON *.* TO 'userdesafio'@'%';