-- Quantidade distinta de Transações e Clientes no mês de julho de 2025
SELECT COUNT(*), COUNT(DISTINCT IdTransacao), COUNT(DISTINCT IdCliente)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-1'
ORDER BY DtCriacao DESC