-- Lista de pedidos realizados no fim de semana

SELECT DtCriacao,

    -- Retorna o dia da semana ('%w') - Começa no 0 (domingo)
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaDaSemana

FROM transacoes

WHERE DiaDaSemana = '0' OR DiaDaSemana = '5' OR DiaDaSemana = '6'