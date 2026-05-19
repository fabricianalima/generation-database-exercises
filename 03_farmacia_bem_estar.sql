-- Criação do banco de dados 
CREATE DATABASE db_farmacia_bem_estar;

-- Criação da tabela Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(100) NOT NULL,
    receita_obrigatoria BOOLEAN,

    PRIMARY KEY(id)
);
-- Inserindo registros na tabela Categorias
INSERT INTO tb_categorias(categoria, receita_obrigatoria)
VALUES
("Medicamentos", TRUE),
("Vitaminas", FALSE),
("Higiene", FALSE),
("Cosméticos", FALSE),
("Controlados", TRUE);

-- Criação da tabela Produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2),
    fabricante VARCHAR(100),
    categoria_id BIGINT,

    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela Categorias
INSERT INTO tb_produtos(nome, preco, fabricante, categoria_id)
VALUES
("Paracetamol", 15.99, "Medley", 1),
("Vitamina C", 29.90, "Cimed", 2),
("Shampoo Anticaspa", 20, "Clear", 3),
("Protetor Solar", 49.99, "Nivea", 4),
("Dipirona", 12.00, "Neo Química", 1),
("Rivotril", 45.00, "Roche", 5),
("Hidratante Facial", 35.90, "La Roche-Posay", 4),
("Ômega 3", 55.00, "Vitafor", 2);

-- Produtos com valor > 50
SELECT * FROM tb_produtos WHERE preco > 50;

-- Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

-- Produtos que contém a letra "C"
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- INNER JOIN
SELECT tb_produtos.nome, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Produtos da categoria Cosméticos
SELECT tb_produtos.nome, tb_categorias.categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria = "Cosméticos";