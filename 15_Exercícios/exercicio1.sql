-- Quantos clientes tem email cadastrado?

SELECT count(IdCliente) AS QtdEmail

FROM clientes

WHERE flEmail = 1
