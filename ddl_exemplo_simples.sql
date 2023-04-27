CREATE TABLE public.Curso (
	Codigo SERIAL PRIMARY KEY,
    Descricao VARCHAR(200)
);

CREATE TABLE public.Aluno (
	CPF VARCHAR(11) PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(200),
    DataNascimento DATE,
    Curso INTEGER REFERENCES Curso (Codigo)   	
);

