CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(50),
    preco DECIMAL(6,2),
    borda VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- insert categorias

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Tradicional", "Pizzas clássicas mais populares");

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Premium", "Pizzas com ingredientes especiais");

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Doce", "Pizzas doces e sobremesas");

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Vegetariana", "Pizzas sem carne");

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Broto", "Pizza pequena ideal para uma pessoa");

-- insert pizzas

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Calabresa", "Grande", 49.90, "Catupiry", 1);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Portuguesa", "Média", 45.00, "Cheddar", 1);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Frango com Catupiry", "Grande", 52.90, "Catupiry", 2);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Marguerita", "Broto", 35.00, "Sem borda", 5);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Chocolate", "Média", 42.50, "Chocolate", 3);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Morango com Nutella", "Grande", 59.90, "Nutella", 3);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Vegetariana Especial", "Grande", 48.90, "Cheddar", 4);

INSERT INTO tb_pizzas(nome, tamanho, preco, borda, categoria_id)
VALUES ("Quatro Queijos", "Média", 47.90, "Catupiry", 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome, tamanho, borda, tb_categorias.nome, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tamanho, borda, tb_categorias.nome, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Doce";



