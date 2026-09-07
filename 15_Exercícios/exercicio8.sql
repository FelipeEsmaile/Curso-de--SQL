-- Qual o produto com mais pontos transacionado?

SELECT IdProduto, sum(IdProduto) AS SomaProduto

FROM transacao_produto

GROUP BY IdProduto 

ORDER BY SomaProduto DESC

LIMIT 1