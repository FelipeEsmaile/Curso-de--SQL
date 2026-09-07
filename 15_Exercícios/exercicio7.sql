-- Qual o produto mais transacionado?

SELECT IdProduto, count(IdProduto) AS QtdProduto

FROM transacao_produto

GROUP BY IdProduto 

ORDER BY QtdProduto DESC

LIMIT 1





 