-- Relacionamentos entre tabelas
-- #############################

-- Alterando nome da coluna "id" tabela "product", para condizer com a tabela "stock"
ALTER TABLE product RENAME COLUMN id TO id_product

-- Inserindo registro na tabela de produto
INSERT INTO product (id_product, name, value) VALUES (2, 'Nintendo Switch', '1950.00');

-- Inserindo registro na tabela stock
INSERT INTO stock (id_stock, id_product, date, obs) VALUES (2, 2, '2025-03-13', 'Versão Mario Kart 8 Deluxe');

-- Relacionamento entre tabelas unificado
SELECT  product.name,
        product.value,
        date,
        obs
FROM product
INNER JOIN stock ON product.id_product = stock.id_product;

-- Relacionamento entre tabelas com mais filtros
SELECT  product.name,
        product.value,
        date,
        obs
FROM product
INNER JOIN stock ON product.id_product = stock.id_product; AND product.name = 'Nintendo Switch';


