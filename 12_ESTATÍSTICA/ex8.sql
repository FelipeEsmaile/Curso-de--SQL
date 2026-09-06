SELECT sum(QtdePontos),

    sum(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS SomaPontosPositivos,

    count(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QuantidadePontosPositivos,

    sum(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS SomaPontosNegativos,
    
    count(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QuantidadePontosNegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01' 
