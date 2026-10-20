-- Como foi a  curva de Churn do Curso de SQL

-- tabela onde identifica todos que estavam no 1° dia
WITH tabela_clientes_dia1 AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-26'
),

tabela_join AS (

    SELECT substr(t2.DtCriacao,1,10) AS dtDia,
            count(DISTINCT t1.IdCliente) AS qtdeCliente,
            1.* count(DISTINCT t1.IdCliente) / (select count(*) from tabela_clientes_dia1) AS pctRetencao,

            -- Calculo do Churn
            1 - 1.* count(DISTINCT t1.IdCliente) / (select count(*) from tabela_clientes_dia1) AS pctChurn
        
    FROM tabela_clientes_dia1 AS t1

    LEFT JOIN transacoes AS t2
    ON t1.IdCliente = t2.IdCliente

    WHERE t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'

    GROUP BY dtDia

)

SELECT * FROM tabela_join