CREATE VIEW loja.vwClienteIdade AS
SELECT nome, data_nascimento, age(data_nascimento)
FROM loja.Cliente;

CREATE VIEW loja.vwClienteAvaliacao AS
SELECT c.nome, COUNT(a.id) FROM loja.Cliente AS c
LEFT JOIN loja.Avaliacao AS a ON c.id = a.autor
GROUP BY c.nome;

CREATE VIEW loja.vwPedidosCaros AS
SELECT c.nome, pd.nome, p.valor_total FROM loja.Cliente AS c
INNER JOIN loja.Pedido AS p ON c.id = p.id
INNER JOIN loja.ProdutoPedido as pp ON pp.pedido = p.id
INNER JOIN loja.Produto as pd ON pp.produto = pd.id
WHERE p.valor_total > 150;