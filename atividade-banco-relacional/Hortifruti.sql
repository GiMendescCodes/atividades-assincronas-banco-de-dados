CREATE DATABASE db_hortifruti;

USE db_hortifruti;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    quantidade INT,
    preco DECIMAL(6,2),
    unidade VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- insert categorias

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Frutas", "Produtos frescos e ricos em vitaminas");

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Verduras", "Folhas e vegetais para saladas");

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Legumes", "Vegetais utilizados em diversas receitas");

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Orgânicos", "Produtos cultivados sem agrotóxicos");

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Temperos", "Itens utilizados para dar sabor aos alimentos");

-- insert produtos

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Maçã", 50, 8.99, "Kg", 1);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Banana", 70, 5.50, "Kg", 1);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Alface", 30, 3.99, "Unidade", 2);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Couve", 25, 4.50, "Maço", 2);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Cenoura", 40, 6.99, "Kg", 3);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Batata", 80, 7.50, "Kg", 3);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Tomate Orgânico", 20, 12.99, "Kg", 4);

INSERT INTO tb_produtos(produto, quantidade, preco, unidade, categoria_id)
VALUES ("Orégano", 15, 2.99, "Pacote", 5);

SELECT * FROM tb_produtos WHERE preco > 7.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 10.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT produto, quantidade, preco, unidade, tb_categorias.tipo, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT produto, quantidade, preco, unidade, tb_categorias.tipo, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "Frutas";
