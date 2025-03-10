-- Inserção de dados nas tabelas de Produtos, Cliente e Estoque
-- ############################################################

-- Inserindo registros na tabela de clientes
INSERT INTO customer (name, email, cpf) VALUES ('Marcílio Bordin', 'marcilio@gmail.com.br', '453.456.567-90');

-- Inserindo Registros na tabela de Produtos
INSERT INTO product (id, name, value) VALUES (1, 'Controle XBOX', 340.40);

-- Inserindo registros na tabela de Estoque
INSERT INTO stock (id_stock, id_product, date, obs) VALUES (1, 1, '2025-03-10', 'Produto vendido apenas em uma única cor');
