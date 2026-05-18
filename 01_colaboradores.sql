-- 1- Criação de banco de dados RH
CREATE DATABASE db_rh;

-- 2- Criação da tabela de colaboradores

CREATE TABLE tb_colaboradores ( 
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    salario DECIMAL(10,2),
    cargo VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

-- 3- Inserindo 5 registros no banco 
INSERT INTO tb_colaboradores(nome, idade, salario, cargo)
VALUES
("Maria", 25, 2500.00, "Recepcionista"),
("João", 30, 3200.00, "Auxiliar Geral"),
("Ana", 22, 1800.00, "Estagiário"),
("Carlos", 40, 5500.00, "Analista Administrativo"),
("Fernanda", 28, 4100.00, "Auxiliar Administrativo");

-- 4- Retornar todos os colaboradores com o salário maior do que R$ 2000,00

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- 5- Retornar todos os colaboradores com o salário menor do que R$ 2000,00

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- 6- Atualizar um registro dessa tabela

UPDATE tb_colaboradores SET salario = 2000.00 WHERE Id = 3;

SELECT * FROM tb_colaboradores;