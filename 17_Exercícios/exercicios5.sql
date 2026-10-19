-- Quais clientes mais perderam pontos por Lover?

SELECT t1.IdCliente, sum(t1.QtdePontos) AS TotalPontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

Where t3.DescCategoriaProduto = 'lovers'

GROUP BY t1.IdCliente

ORDER BY sum(t1.QtdePontos) 

LIMIT 10