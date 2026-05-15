CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    dataAdmissao DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, dataAdmissao) 
values ("Giovanna","DEV JUNIOR", 1700, "2023-12-15");

INSERT INTO tb_colaboradores(nome, cargo, salario, dataAdmissao) 
VALUES ("Carlos", "Analista de Sistemas", 3500, "2022-08-10");

INSERT INTO tb_colaboradores(nome, cargo, salario, dataAdmissao) 
VALUES ("Mariana", "UX Designer", 4200, "2021-05-20");

INSERT INTO tb_colaboradores(nome, cargo, salario, dataAdmissao) 
VALUES ("Felipe", "Gerente de Projetos", 6500, "2020-11-03");

INSERT INTO tb_colaboradores(nome, cargo, salario, dataAdmissao) 
VALUES ("Amanda", "Suporte Técnico", 2500, "2024-01-15");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET cargo = "DEV PLENO",
    salario = 3000
WHERE id = 1;

SELECT * FROM tb_colaboradores