SELECT IdTransacao, QtdePontos, 
    CASE
        WHEN QtdePontos > 0 THEN QtdePontos
    END AS SomaPontosPositivos,

    CASE
        WHEN QtdePontos < 0 THEN QtdePontos
    END AS SomaPontosNegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01' 

ORDER BY qtdePontos   