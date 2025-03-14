-- Relacionamento entre tabelas
--#############################

-- Deletando tabelas existentes
DROP TABLE product;

DROP TABLE stock;

-- Criando tabela produto com chave primária no id
CREATE TABLE product (id INTEGER PRIMARY KEY, name VARCHAR(30), value VARCHAR(30));

-- Criando tabela com chave estrangeira
CREATE TABLE stock (id INTEGER PRIMARY KEY, id_product INTEGER REFERENCES product(id));

-- Adicionando relacionamento(FK) entre tabelas
CREATE TABLE stock (id INTEGER PRIMARY KEY,
                        id_product INTEGER,
                        date DATE NOT NULL,
                        obs VARCHAR(100) NOT NULL,
                        CONSTRAINT fk_id_product FOREIGN KEY (id_product) REFERENCES product (id)
                    );

-- Inserindo dados na tabela Produto
INSERT INTO product (id, name, value) VALUES (1, 'Xbox Series X', '3650.00');

INSERT INTO product (id, name, value) VALUES (2, 'PlayStation 5', '3350.00');

-- Inserindo dados na tabela Estoque
INSERT INTO stock (id, id_product, date, obs) VALUES (1, 1, '2025-03-13', 'Video Game Especial Edition');

INSERT INTO stock (id, id_product, date, obs) VALUES (2, 2, '2025-03-13', 'Video Game Portatil');

-- Relacionamento entre tabelas unificado
SELECT  product.name,
        product.value,
        date,
        obs
FROM product
INNER JOIN stock ON product.id = stock.id_product;

-- Relacionamento entre tabelas com mais filtros
SELECT  product.name,
        product.value,
        date,
        obs
FROM product
INNER JOIN stock ON product.id = stock.id_product; AND product.name = 'PlayStation 5';


