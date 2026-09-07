-- Qual cliente fez mais transações no ano de 2024?

SELECT count(IdCliente) AS QtdTransacoes

FROM transacoes

WHERE DtCriacao >= '2024-01-01' AND DtCriacao <= '2024-12-31'

GROUP BY IdCliente 

ORDER BY QtdTransacoes DESC

LIMIT 1 