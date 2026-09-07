-- Qual dia da semana tem mais pedidos em 2025?

SELECT strftime('%w', substr(DtCriacao, 1, 10)) AS diaSemana,

        -- Colocando os valores respectivos equivalentes a cada dia
        CASE 
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '0' THEN 'Domingo'
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '1' THEN 'Segunda'
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '2' THEN 'Terça'
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '3' THEN 'Quarta'
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '4' THEN 'Quinta'
            WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '5' THEN 'Sexta'
            ELSE 'Sábado'
        END AS Dia,

        count(distinct IdTransacao) AS qtdeTransacao

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY diaSemana
