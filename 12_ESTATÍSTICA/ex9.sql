SELECT round(avg(QtdePontos),2) as MediaCarteira,
    min(QtdePontos) as minCarteira,
    max(QtdePontos) as maxCarteira,
    sum(flTwitch), -- Porque são 0 e 1
    sum(flEmail) -- Porque são 0 e 1

FROM clientes