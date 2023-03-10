CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50),
    preco DECIMAL(10,2),
    quantidade INT,
    maraca VARCHAR(30),
    frete BOOLEAN,
    
    PRIMARY KEY(id)
    
    );
    
    INSERT INTO tb_produtos(nome, preco, quantidade, marca, frete)
					VALUES("Jogo de Toalhas", 168.90, 7, "Buddemeyer", true),
						  ("Ar Condicionado", 1606, 1, "Consul", false),
                          ("Celular", 1099, 1, "Samsung", true),
						  ("Computador", 1099, 1, "LG", false),
                          ("Iphnoe", 4099, 1, "Apple", true),
                          ("Armario", 2099, 1, "Itatiaia", false),
						  ("Moto E32", 915, 1, "Motorola", true),
                          ("Jogos", 219, 1, "PS4", false);
						
                        
 SELECT * FROM tb_produtos;                       
                        
SELECT nome FROM tb_produtos WHERE preco > 500;
SELECT nome FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 2000 WHERE id = 7;