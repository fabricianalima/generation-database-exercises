-- Criação de banco de dados db_generation_game_online
CREATE DATABASE db_generation_game_online

-- 1. Criação da tabela Classe
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(100) NOT NULL,
arma VARCHAR(100),
PRIMARY KEY(id)
);

-- 2. Criação da tabela Personagens
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
poder_ataque INT,
poder_defesa INT,
classe_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

-- 3. Inserindo registros na tabela classe
INSERT INTO tb_classe(classe, arma)
VALUES
("Ninja", "Kunai"),
("Guerreiro", "Espada"),
("Deus Ancião", "Magia"),
("Assassino", "Adagas"),
("Imperador", "Martelo");

-- 4. Inserindo registros na tabela personagens
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id)
VALUES
("Scorpion", 9500, 7000, 1),
("Sub-Zero", 9200, 8500, 1),
("Kitana", 7800, 6500, 4),
("Raiden", 9900, 9000, 3),
("Shao Kahn", 10000, 9500, 5);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id)
VALUES
("Liu Kang", 8800, 7600, 2),
("Mileena", 8100, 6200, 4),
("Johnny Cage", 7500, 6800, 2);
 
 -- 5. Poder de ataque > 2000
 SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
 
  -- 6. Poder de defesa entre 1000 e 2000
 SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
 
 -- 7. Personagens que possui a letra C no nome
 SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
 
 -- 8. Fazer o Inner Join
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classe_id = tb_classe.id;

-- 9. Buscando apenas personagens da classe "Ninja"
SELECT nome, classe
FROM tb_personagens
INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id
WHERE classe = "Ninja";