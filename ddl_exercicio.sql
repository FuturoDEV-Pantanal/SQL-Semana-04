CREATE SCHEMA loja;

CREATE TABLE loja.Cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(200) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    CONSTRAINT chk_cpf_length CHECK (LENGTH(cpf) = 11)
);

CREATE TABLE loja.MetodoPagamento (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES loja.Cliente (id),
    numero_cartao VARCHAR(16) NOT NULL,
    validade DATE NOT NULL,
    senha VARCHAR(50) NOT NULL
    CONSTRAINT chk_cartao_length CHECK (LENGTH(numero_cartao) = 16)
);

CREATE TABLE loja.Produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    preco NUMERIC(10, 2) NOT NULL,
    nota NUMERIC(2, 1) NOT NULL,
    unidades INTEGER NOT NULL,
    nro_vendas INTEGER NOT NULL
    CONSTRAINT nota CHECK (nota >= 0 AND nota <= 5) 
);

CREATE TABLE loja.Avaliacao (
    id SERIAL PRIMARY KEY,
    autor INTEGER REFERENCES loja.Cliente (id),
    produto INTEGER REFERENCES loja.Produto (id),
    comentario VARCHAR(500) NOT NULL,
    numero_estrelas NUMERIC(1, 0) NOT NULL,
    data_criacao DATE NOT NULL
);

CREATE TABLE loja.Pedido (
    id SERIAL PRIMARY KEY,
    cliente INTEGER REFERENCES loja.Cliente (id),
    metodo_pagamento INTEGER REFERENCES loja.MetodoPagamento (id),
    valor_total NUMERIC(20, 2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    foi_entregue BOOLEAN NOT NULL
);

CREATE TABLE loja.ProdutoPedido (
    produto INTEGER REFERENCES loja.Produto (id),
    pedido INTEGER REFERENCES loja.Pedido (id)
);