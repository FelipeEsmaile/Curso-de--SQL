SELECT IdCliente,
        QtdePontos,

        -- Dividindo a quatidade de pontos por grupos
        CASE
            WHEN QtdePontos <= 500 THEN 'Feiticeiro'
            WHEN QtdePontos <= 1000 THEN 'Feiticeiro Premium'
            WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo

FROM clientes
ORDER BY QtdePontos DESC