SELECT IdCliente, 
    -- Coluna original
    DtCriacao,

    -- Transformou em Data e Hora
    datetime(DtCriacao) AS DtCriacaoDataHora, 

    -- Fatia os valores e transformando em data (Me retornou só a data)
    datetime(substr(DtCriacao, 1, 10)) AS Data,

    -- Retorna o dia da semana ('%w') - Começa no 0 (domingo)
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaDaSemana


FROM clientes
LIMIT 10
