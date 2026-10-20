-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?


-- Quem participou da 1° aula / 
WITH tabela_primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-25'

),

-- Quem particiou do curso inteiro
tabela_dias_curso AS (
    SELECT DISTINCT
            IdCliente,
            substr(DtCriacao,1,10) AS presenteDia
    FROM transacoes
    WHERE dtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
    ORDER BY IdCliente, presenteDia

),

-- Contando quantas vezes quem participou do primeiro dia, voltou
tabela_cliente_dias AS (
    SELECT t1.IdCliente,
        count(DISTINCT t2.presenteDia) as qtdeDias
    FROM tabela_primeiro_dia AS t1
    LEFT JOIN tabela_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.IdCliente
)

-- Calculando a média
SELECT avg(qtdeDias)
FROM tabela_cliente_dias
