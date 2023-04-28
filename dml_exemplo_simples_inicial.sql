INSERT INTO Curso (Descricao)
VALUES
    ('Engenharia da computação'),
    ('Ciência de dados'),
    ('Análise e desenvolvimento de sistemas');


INSERT INTO Aluno (CPF, Nome, Endereco, DataNascimento, Curso)
VALUES
    ('11045639699', 'Julia Dias', 'Rua Falsa 123', '22/06/1990', 1),
    ('19539583744', 'Bruno Ramos', 'Av das Torres, 30', '13/03/2005', 2),
    ('19453498711', 'Viviane Lima', 'Rua Everlast, 33', '03/02/1999', 3);

UPDATE Curso
SET Descricao = 'Engenharia elétrica'
WHERE Codigo = 3;

UPDATE Aluno
SET DataNascimento = '30/11/2000'
WHERE CPF = '19453498711';