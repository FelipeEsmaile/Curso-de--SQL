SELECT sum(QtdePontos),

    sum(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS qtdePontosPositivos,

    avg(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS MédiaPontosPositivos,

    sum(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS qtdePontosNegativos,
    
    avg(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS MédiaPontosNegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01' 

