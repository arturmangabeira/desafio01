use desafio01;

CREATE TABLE modulo_cursos (
    id integer not null auto_increment PRIMARY KEY,
    ativo boolean not null,
    nome varchar(50) not null,
    descricao varchar(2000) not null    
);

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

--CREATE USER 'userdesafio'@'%' IDENTIFIED BY 'desafio01';

--GRANT ALL PRIVILEGES ON *.* TO 'userdesafio'@'%';