-- Criação do Banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Criação da tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(100) NOT NULL,
tamanho VARCHAR(50),
PRIMARY KEY(id)
);

-- Iserindo registros na tabela tb_categorias
INSERT INTO tb_categorias(categoria, tamanho)
VALUES
("Salgada", "Grande"),
("Doce", "Média"),
("Vegetariana", "Grande"),
("Especial", "Família"),
("Premium", "Grande");

-- Criação da tb_pizzas
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(100) NOT NULL,
preco DECIMAL(10,2),
ingredientes VARCHAR(255),
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- Iserindo registros na tabela tb_pizzas
INSERT INTO tb_pizzas(sabor, preco, ingredientes, categoria_id)
VALUES
("Calabresa", 45.00,  "Calabresa, cebola e mussarela", 1),
("Margherita", 50.00, "Tomate, manjericão e mussarela", 3),
("Frango com Catupiry", 55.00, "Frango desfiado e catupiry", 1),
("Chocolate", 42.00, "Chocolate ao leite e morango", 2),
("Romeu e Julieta", 48.00, "Queijo e goiabada", 2),
("Portuguesa", 60.00, "Presunto, ovo, cebola e ervilha", 4),
("Quatro Queijos", 58.00, "Mussarela, provolone, parmesão e gorgonzola", 5),
("Pepperoni", 65.00, "Pepperoni e queijo", 5);

-- Buscando os valores de pizzas > 45
 SELECT * FROM tb_pizzas WHERE preco > 45;
 
-- Buscando os valores de pizzas entre 50 e 100
 SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
 
 -- Pizzas que possui a letra M no nome
 SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";
 
 -- Inner Join
 SELECT tb_pizzas.sabor, tb_categorias.categoria
 FROM tb_pizzas
 INNER JOIN tb_categorias
 ON tb_pizzas.categoria_id = tb_categorias.id;
 
-- INNER JOIN pizzas de categoria doce,
 SELECT tb_pizzas.sabor, tb_categorias.categoria
 FROM tb_pizzas
 INNER JOIN tb_categorias
 ON tb_pizzas.categoria_id = tb_categorias.id
 WHERE categoria = "doce";





