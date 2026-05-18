CREATE DATABASE db_games;

USE db_games;


CREATE TABLE tb_classe(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nivel INT,
    ataque INT,
    classe_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(nome, descricao)
VALUES ("Lutador", "Especialista em combate");

INSERT INTO tb_classe(nome, descricao)
VALUES ("Mago", "Usa poderes mágicos");

INSERT INTO tb_classe(nome, descricao)
VALUES ("Arqueiro", "Ataques à distância");

INSERT INTO tb_classe(nome, descricao)
VALUES ("Assassino", "Ataques rápidos e furtivos");

INSERT INTO tb_classe(nome, descricao)
VALUES ("Tanque", "Alta defesa e resistência");


INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Ellie - The Last of Us", 16, 3400, 4);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Fade - Valorant", 18, 3800, 2);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Zelda - The Legend of Zelda", 14, 2800, 2);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Link - The Legend of Zelda", 17, 3900, 3);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Scorpion - Mortal Kombat", 19, 4500, 4);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Ryu - Street Fighter", 18, 4100, 1);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Kratos - God of War", 20, 5000, 1);

INSERT INTO tb_personagem(nome, nivel, ataque, classe_id)
VALUES ("Geralt - The Witcher", 18, 4200, 1);

SELECT * FROM tb_personagem WHERE ataque > 4000;

SELECT * FROM tb_personagem WHERE nivel BETWEEN 17 AND 19;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT tb_personagem.nome, nivel, ataque, tb_classe.nome, tb_classe.descricao FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;

SELECT tb_personagem.nome, nivel, ataque, tb_classe.nome, tb_classe.descricao FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id WHERE tb_classe.nome = "A";


