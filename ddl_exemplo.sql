CREATE TABLE Endereco (
	endereco_id SERIAL PRIMARY KEY,
	pais VARCHAR(80) NOT NULL,
	estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(150) NOT NULL,
    bairro VARCHAR(150) NOT NULL,
    rua VARCHAR(200) NOT NULL,
    numero INTEGER NOT NULL,
    complemento VARCHAR(50),
    cep VARCHAR(8) NOT NULL,
    CONSTRAINT chk_cep_length CHECK (LENGTH(cep) = 8)   	
);

CREATE TABLE Cliente (
    cliente_id SERIAL PRIMARY KEY,
    endereco_id INTEGER REFERENCES Endereco (endereco_id),
    nome VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(200) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    cnh VARCHAR(25) NOT NULL,
    CONSTRAINT chk_cpf_length CHECK (LENGTH(cpf) = 11)
);

CREATE TABLE Funcionario (
    funcionario_id SERIAL PRIMARY KEY,
    endereco_id INTEGER REFERENCES Endereco (endereco_id),
    nome VARCHAR(200) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(200) NOT NULL,
    CONSTRAINT chk_cpf_length CHECK (LENGTH(cpf) = 11)
);

CREATE TABLE Agencia (
    agencia_id SERIAL PRIMARY KEY,
    endereco_id INTEGER REFERENCES Endereco (endereco_id),
    eh_sede BOOLEAN NOT NULL,
    nome VARCHAR(200) NOT NULL
);

CREATE TABLE FuncionarioAgencia (
    funcionario_id INTEGER REFERENCES Funcionario (funcionario_id),
    agencia_id INTEGER REFERENCES Agencia (agencia_id)
);

CREATE TABLE Categoria (
    categoria_id SERIAL PRIMARY KEY,
    descricao VARCHAR(300),
    valor_diaria NUMERIC(6, 2)
);

CREATE TABLE Carro (
    carro_id SERIAL PRIMARY KEY,
    categoria_id INTEGER REFERENCES Categoria (categoria_id),
    funcionario_id INTEGER REFERENCES Funcionario (funcionario_id),
    agencia_id INTEGER REFERENCES Agencia (agencia_id),
    data_cadastro DATE NOT NULL,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    placa VARCHAR(15) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    passageiros NUMERIC(2) NOT NULL,
    quilometragem INTEGER NOT NULL,
    cambio VARCHAR(50) NOT NULL,
    direcao VARCHAR(50) NOT NULL,
    combustivel VARCHAR(50) NOT NULL,
    ano NUMERIC(4) NOT NULL
);


