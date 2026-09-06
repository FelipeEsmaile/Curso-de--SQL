-- Usamos o HAVING somente quando utilizamos o GROUP BY

SELECT IdCliente, DtCriacao, sum(QtdePontos), count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

-- HAVING --
HAVING sum(QtdePontos) >= 4000
-----------

ORDER BY sum(QtdePontos) DESC

LIMIT 10

