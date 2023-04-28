-- Select simples
SELECT * FROM loja.Cliente;

-- Verificando pedidos que custaram mais de 150
-- SELECT * FROM loja.Pedido
--     WHERE valor_total > 150;

-- Utilizando alias
-- SELECT nome AS nome_completo FROM loja.Cliente;

-- Verificando a quantidade de clientes
-- SELECT COUNT(*) FROM loja.Cliente;

-- Verificando a soma dos valores dos pedidos
-- SELECT SUM(valor_total) FROM loja.Pedido;

-- Verificando a média da pontuação dos produtos
-- SELECT AVG(nota) FROM loja.Produto;

-- Verificando qual é o aniversário da pessoa mais velha
-- SELECT MIN(data_nascimento) FROM loja.Cliente;

-- Verificando qual é o aniversário da pessoa mais nova
-- SELECT MAX(data_nascimento) FROM loja.Cliente;

-- Ordenando o nome dos clientes por ordem alfabética
-- SELECT nome, cpf FROM loja.Cliente ORDER BY nome ASC;

-- Obtendo nome do cliente com o maior valor do pedido
-- SELECT nome FROM loja.Cliente AS c
-- INNER JOIN loja.Pedido AS p ON c.id = p.id
-- WHERE p.valor_total = (SELECT MAX(valor_total) FROM loja.Pedido);

-- Obtendo nome do cliente e do produto com o maior valor do pedido
-- SELECT c.nome, pd.nome FROM loja.Cliente AS c
-- INNER JOIN loja.Pedido AS p ON c.id = p.id
-- INNER JOIN loja.ProdutoPedido as pp ON pp.pedido = p.id
-- INNER JOIN loja.Produto as pd ON pp.produto = pd.id
-- WHERE p.valor_total = (SELECT MAX(valor_total) FROM loja.Pedido);