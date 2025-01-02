USE ClientesProcessos;

SELECT * FROM Clientes;
SELECT * FROM Processos;

SELECT * FROM Processos WHERE ClienteID = 4;
SELECT * FROM Clientes WHERE Nome = 'Gabriel'

--Exercícios de Consultas Comuns (Fixação)--

--Contar o número de processos com status 'Em andamento' para cada cliente--
--(Liste o nome do cliente junto com a contagem de processos)--
SELECT 
	c.Nome AS Cliente,
	COUNT(p.ProcessoID) AS QuantidadeDeProcessosEmAndamento
FROM
	Clientes c
JOIN 
	Processos p ON c.ClienteID = p.ClienteID
WHERE 
	p.Status = 'Em andamento'
GROUP BY
	c.Nome;

--Calcular a média de idade dos clientes que têm processos 'Concluídos'--
--(Mostrar a média e o total de clientes incluídos)--
--DISTINCT => Novo comando!--
SELECT
	AVG(c.Idade) AS MédiaIdade,
	COUNT(DISTINCT C.ClienteID) AS TotalDeClientes
FROM
	Clientes c
JOIN 
	Processos p ON c.ClienteID = p.ClienteID
WHERE 
	p.Status = 'Concluído'

--Obter a data mais recente de abertura de processos 'Em andamento'--
--(Retorne apenas a data mais recente)--
--Dá pra fazer sem a SubConsulta--
SELECT 
	p.Descricao AS Processo,
	p.DataAbertura AS DataMaisRecente
FROM
	Processos p
WHERE
	p.Status = 'Em andamento'
	AND p.DataAbertura = (
		SELECT 
			MAX(DataAbertura)
			FROM Processos
			WHERE Status = 'Em andamento'
	);

--Filtrar clientes que têm mais de 3 processos com status 'Aberto'--
--(Liste o nome do cliente e a contagem de processos)--
SELECT
	c.Nome AS Cliente,
	COUNT(p.ProcessoID) AS QuantidadeDeProcessos
FROM
	Clientes c
JOIN 
	Processos p ON c.ClienteID = p.ClienteID
WHERE
	p.Status = 'Aberto'
GROUP BY
	c.Nome
HAVING
	COUNT(p.ProcessoID) >= 3;

--Inserindo registros pra testar o código anterior--
INSERT INTO Processos (ClienteID, Descricao, DataAbertura, Status)
VALUES
(30, 'Reclamação Cível', '02/01/2025', 'Aberto'),
(30, 'Pedido de Indenização', '01/01/2025', 'Aberto');