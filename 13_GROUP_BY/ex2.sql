SELECT IdCliente, DtCriacao, sum(QtdePontos), count(IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY IdCliente