USE ClientesProcessos;

SELECT * FROM Clientes;
SELECT * FROM Processos;

SELECT * FROM Processos WHERE ClienteID = 5;

--Exerc�cios de Consultas Comuns (Fixa��o)--

--Contar o n�mero de processos com status 'Em andamento' para cada cliente--
--(Liste o nome do cliente junto com a contagem de processos)--
SELECT 
	c.Nome AS Cliente,
	COUNT(p.ID) AS QuantidadeDeProcessosEmAndamento
FROM
	Clientes c
JOIN 
	Processos p ON c.ID = p.ClienteID
WHERE 
	p.Status = 'Em andamento'
GROUP BY
	c.Nome;