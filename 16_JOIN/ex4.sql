SELECT *

FROM transacao_produto AS t1

INNER JOIN produtos AS t2

ON t1.IdProduto = t2.IdProduto

WHERE t1.IdProduto IS NULL