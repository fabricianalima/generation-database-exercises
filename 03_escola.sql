-- 1- Criação de banco de dados da Escola
CREATE DATABASE db_escola;

-- 2- Criação da tabela do Estudantes
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    turma VARCHAR(50),
	nota DECIMAL(4,2),
    email VARCHAR(255),
    PRIMARY KEY(id)
);
-- 3- Inserindo 8 registros no banco 
INSERT INTO tb_estudantes(nome, idade, turma, nota, email)
VALUES
("Maria Silva", 16, "2A", 8.50, "maria.silva@email.com"),
("João Santos", 17, "3B", 7.20, "joao.santos@email.com"),
("Ana Oliveira", 15, "1A", 9.10, "ana.oliveira@email.com"),
("Carlos Souza", 16, "2C", 6.80, "carlos.souza@email.com"),
("Fernanda Lima", 17, "3A", 8.90, "fernanda.lima@email.com"),
("Lucas Pereira", 15, "1B", 5.75, "lucas.pereira@email.com"),
("Juliana Costa", 16, "2B", 9.50, "juliana.costa@email.com"),
("Rafael Almeida", 17, "3C", 7.85, "rafael.almeida@email.com");

-- 4- Retornar todos os estudantes com a nota maior do que 7.0.
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- 5- Retornar todos os estudantes com a nota menor do que 7.0.
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- 6- Atualizar um registro dessa tabela
UPDATE tb_estudantes SET email = "ju.costa@email.com" WHERE Id = 7;

SELECT * FROM tb_estudantes;
