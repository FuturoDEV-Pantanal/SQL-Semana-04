INSERT INTO loja.Cliente (nome, data_nascimento, email, cpf, senha)
VALUES
    ('Eduarda Aline Joana Duarte', '15/01/1991', 'eduarda_aline_duarte@roche.com', '61855701650', '9jjcJAjZ7j'),
    ('Kevin Benício Bruno da Mata', '18/01/1989', 'kevin_damata@a.com', '97842699100', 'B30SFF4kT3'),
    ('Sérgio Diego Ryan Nascimento', '25/01/1971', 'sergio.diego.nascimento@revati.com.br', '01662341504', 'C4dtEUbwhq');

INSERT INTO loja.MetodoPagamento (cliente_id, numero_cartao, validade, senha)
VALUES
    (1, '5305239593809077', '24/07/2024', '457'),
    (2, '5256702751213266', '24/03/2025', '677'),
    (3, '5469617925661930', '24/03/2024', '986');

INSERT INTO loja.Produto (nome, preco, nota, unidades, nro_vendas)
VALUES
    ('Banana musical', 20, 3.9, 100, 200),
    ('Capinha de celular', 15, 1.5, 1000, 5000),
    ('Sabonete colorido', 150, 4.5, 20, 10);

INSERT INTO loja.Avaliacao (autor, produto, comentario, numero_estrelas, data_criacao)
VALUES
    (2, 3, 'Achei top o produto', 5, '22/03/2023'),
    (1, 2, 'Não gostei muito', 2, '23/03/2023'),
    (3, 1, 'Achei mais ou menos', 3, '24/03/2023');

INSERT INTO loja.Pedido (cliente, metodo_pagamento, valor_total, status, foi_entregue)
VALUES
    (1, 1, 200.33, 'EM PROCESSAMENTO', FALSE),
    (2, 2, 100.50, 'FINALIZADO', TRUE),
    (3, 3, 15.98, 'EM PROCESSAMENTO', FALSE);

INSERT INTO loja.ProdutoPedido (produto, pedido)
VALUES
    (1, 3),
    (2, 2),
    (3, 1);