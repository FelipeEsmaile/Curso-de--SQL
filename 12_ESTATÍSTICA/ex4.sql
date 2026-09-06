SELECT IdTransacao, QtdePontos, 
    CASE
        WHEN QtdePontos > 0 THEN QtdePontos
    END AS qtdePontosPositivo

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01' 
