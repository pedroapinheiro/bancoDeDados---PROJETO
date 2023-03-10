CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

/* 1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas. */
CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT,
entrega BOOLEAN,
tipo VARCHAR(7),

PRIMARY KEY(id_categoria)
);


/* 2 - Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria. */
/* 3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas. */
CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT,
tamanho VARCHAR(30),
nome VARCHAR(30),
preco DECIMAL(5,2),
borda_recheada BOOLEAN,
cartao BOOLEAN,
categoria_id BIGINT,

PRIMARY KEY(id_pizza),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id_categoria)
);

/* 4 - Insira 5 registros na tabela tb_categorias. */
INSERT INTO tb_categorias (entrega, tipo)
			VALUES(true, "Doce"),
				  (false, "Salgada"),
				  (true, "Doce"),
			  	  (false, "Salgada"),
				  (true, "Doce");

/* 5 - Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias. */
INSERT INTO tb_pizzas (tamanho, nome, preco, borda_recheada, cartao, categoria_id)
			VALUES("Media", "Frango com Catupiry", 29.99, true, false, 2),
            ("Grande", "Bauru", 34.99, true, true, 4),
            ("Brotinho", "Mussarela", 27.99, false, false, 2),
            ("Grande", "Baiana", 62.99, true, true, 4),
            ("Media", "Brigadeiro", 58.99, false, false, 1),
            ("Grande", "Prestígio", 54.99, true, false, 3),
            ("Brotinho", "Brocolis", 49.99, false, true, 4),
            ("Media", "Romeu e Julieta", 124.99, true, false, 5);

/* 6 - Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. */            
SELECT * FROM db_pizzaria_legal.tb_pizzas WHERE preco > 45.00;

/* 7 - Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00. */
SELECT * FROM db_pizzaria_legal.tb_pizzas WHERE preco > 50.00 && preco < 100.00;

/* 8 - Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome. */
SELECT * FROM db_pizzaria_legal.tb_pizzas WHERE nome LIKE  '%M%';

/* 9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias. */
SELECT * FROM db_pizzaria_legal.tb_pizzas INNER JOIN db_pizzaria_legal.tb_categorias ON db_pizzaria_legal.tb_pizzas.categoria_id = db_pizzaria_legal.tb_categorias.id_categoria;

/* 10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce). */
SELECT * FROM db_pizzaria_legal.tb_pizzas INNER JOIN db_pizzaria_legal.tb_categorias ON db_pizzaria_legal.tb_pizzas.categoria_id = db_pizzaria_legal.tb_categorias.id_categoria WHERE db_pizzaria_legal.tb_categorias.tipo = 'Doce';


