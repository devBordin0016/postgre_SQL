-- Exercício: Definindo a Estrutura de um Banco de Dados (DLL)

-- Criando um banco
CREATE DATABASE ex_sql;

-- Acessar o psql shell e acessar o diretório do banco 
\c ex_sql

-- Criar o Schema
CREATE SCHEMA store;

-- Criando a tabela Clientes
CREATE TABLE "store".customer (
    IdCustomer SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    CPF INTEGER NOT NULL
);

-- Criando a tabela de produtos
CREATE TABLE "store".product (
    IdProduct INTEGER SERIAL PRIMARY KEY,
    BarCode INTEGER NOT NULL,
    NameProduct VARCHAR(50) NOT NULL,
    Description TEXT,
    Price NUMERIC (10, 2) NOT NULL
);

-- Criando tabela de Estoque
CREATE TABLE "store".stock (
    IdStock SERIAL PRIMARY KEY,
    IdProduct INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    EntryDate DATE
);
