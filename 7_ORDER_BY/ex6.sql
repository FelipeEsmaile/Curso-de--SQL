SELECT *
FROM clientes
WHERE flTwitch = 1
ORDER BY DtCriacao ASC, QtdePontos DESC -- ordenando pela data e a qtd de pontos
LIMIT 10 