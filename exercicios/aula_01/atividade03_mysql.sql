CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    idade INT,
    responsavel VARCHAR(30),
    ano VARCHAR(10),
    periodo VARCHAR(10),
    nota DECIMAL(4,2),
    
    PRIMARY KEY(id)
    
    );
    
INSERT INTO tb_estudantes(nome, idade, responsavel, ano, periodo)
				VALUES("Leticia Pereira Silva", 13, "Raquel Pereira SIlva", "7º ano", "Manha", 7),
					  ("Laura Pereira", 14, "Raul Porto", "8º ano", "Tarde", 6),
                      ("Ana Carolina Teixeira", 15, "Sofia Martins", "9º ano", "Manha", 4),
                      ("Emilly Ferreira", 16, "João Gabriel Nascimento", "1º ano", "noite", 9),
                      ("Rafaela Campos", 17, "Luiz Henrique Duarte", "2º ano", "noite", 8),
					  ("Ana Mendes", 13, "Cassia Mendes", "7º ano", "Manha", 9),
                      ("Isabelly da Mata", 17, "Vitor Nogueira", "2º ano", "noite", 8);
    
    SELECT * FROM tb_estudantes;
    
    SELECT nome FROM tb_estudantes WHERE nota > 7;
    SELECT nome FROM tb_estudantes WHERE nota < 7;
    
    UPDATE tb_estudantes SET responsavel = "Lorenzo Moura" WHERE id = 3;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    