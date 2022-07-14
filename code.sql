-- CLIENTE DEPENDENTE

SELECT id_cliente, nome FROM cliente JOIN cliente_conta 
ON cliente.id=cliente_conta.id_cliente
WHERE Cliente_conta.dependente
GROUP BY id_cliente

 -- CONTA QUE MAIS FIZERAM TRANSACÇÕES
SELECT id_cliente_conta, MAX(valor) FROM transacao GROUP BY valor ORDER BY valor DESC LIMIT 5

-- CONTA QUE MENOS FIZERAM TRANSACÇÕES
SELECT id_cliente_conta,
MIN(valor)
FROM transacao GROUP BY valor ORDER BY valor LIMIT 5

-- SOMA DAS CONTA QUE FIZERAM DEPOSITOS
SELECT id_cliente_conta,valor,descricao, SUM(valor) FROM transacao JOIN tipo_transacao ON transacao.id_tipo_transacao =tipo_transacao.id WHERE id_tipo_transacao=1 GROUP BY id_cliente_conta ORDER BY id_cliente_conta
