--                    3 °  V E R S Ã O

-- CTE: COMMON TABLE EXPRESSION

-- Pergunta: Qual cliente estava no primeiro dia e estava no último.

WITH tabela_cliente_primeiro_dia AS (

    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-25'

),

tabela_cliente_ultimo_dia AS (

    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-29'

),

tabela_join AS (

    SELECT t1.IdCliente AS PrimeiroDiaCliente,
            t2.IdCliente AS SegundoDiaCliente

    FROM tabela_cliente_primeiro_dia AS t1
    LEFT JOIN tabela_cliente_ultimo_dia AS t2
    ON t1.IdCliente = t2.IdCliente

)

SELECT count(PrimeiroDiaCliente) AS QtdPrimeiroDia,
        count(SegundoDiaCliente) AS QtdUltimoDia,
        1. * count(SegundoDiaCliente) / count(PrimeiroDiaCliente) AS Media
FROM tabela_join


-- Exercício começa aos 15min