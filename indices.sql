--1
CREATE TABLE customer_indexing(id SERIAL, name TEXT);

--2
INSERT INTO customer_indexing(name) SELECT 'Fernando' FROM generate_series(1,250000);

INSERT INTO customer_indexing(name) SELECT 'Paulo' FROM generate_series(1,250000);

--3 check the result before index
EXPLAIN ANALYZE SELECT * FROM customer_indexing where id = 2;

--4 create index
CREATE INDEX customer_idx_test ON customer_indexing(id);

--5 check the result after index
EXPLAIN ANALYZE SELECT * FROM customer_indexing where id = 2;