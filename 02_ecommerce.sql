-- 1- Criação de banco de dados E-commerce
CREATE DATABASE db_ecommerce;

-- 2- Criação da tabela do E-commerce
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT,
categoria VARCHAR(100),
marca VARCHAR(100),
PRIMARY KEY(id)
);

-- 3- Inserindo 8 registros no banco 
INSERT INTO tb_produtos(nome, preco, estoque, categoria, marca)
VALUES
("Notebook", 4500.00, 10, "Informática", "Dell"),
("Mouse Gamer", 250.00, 35, "Periféricos", "Logitech"),
("Teclado", 320.00, 20, "Periféricos", "Redragon"),
("Smartphone Samsung S24", 5200.00, 15, "Celulares", "Samsung"),
("Monitor 27 Polegadas", 1200.00, 8, "Monitores", "LG"),
("Fone Bluetooth", 380.00, 25, "Áudio", "JBL"),
("Cadeira Gamer", 980.00, 5, "Móveis", "ThunderX3"),
("Webcam", 450.00, 12, "Acessórios", "Logitech");

-- 4- Retornar todos os produtos com o preco maior que R$ 500,00
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- 5- Retornar todos os produtos com o preco menor que R$ 500,00
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- 6- Atualizar um registro dessa tabela
UPDATE tb_produtos SET preco = 500.00 WHERE Id = 8;

SELECT * FROM tb_produtos