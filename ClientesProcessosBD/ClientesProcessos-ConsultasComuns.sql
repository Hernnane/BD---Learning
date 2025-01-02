USE ClientesProcessos;

SELECT * FROM Clientes;
SELECT * FROM Processos;

SELECT * FROM Processos WHERE ClienteID = 4;
SELECT * FROM Clientes WHERE Nome = 'Gabriel'

--Exerc�cios de Consultas Comuns (Fixa��o)--

--Contar o n�mero de processos com status 'Em andamento' para cada cliente--
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

--Calcular a m�dia de idade dos clientes que t�m processos 'Conclu�dos'--
--(Mostrar a m�dia e o total de clientes inclu�dos)--
--DISTINCT => Novo comando!--
SELECT
	AVG(c.Idade) AS M�diaIdade,
	COUNT(DISTINCT C.ClienteID) AS TotalDeClientes
FROM
	Clientes c
JOIN 
	Processos p ON c.ClienteID = p.ClienteID
WHERE 
	p.Status = 'Conclu�do'

--Obter a data mais recente de abertura de processos 'Em andamento'--
--(Retorne apenas a data mais recente)--
--D� pra fazer sem a SubConsulta--
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

--Filtrar clientes que t�m mais de 3 processos com status 'Aberto'--
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

--Inserindo registros pra testar o c�digo anterior--
INSERT INTO Processos (ClienteID, Descricao, DataAbertura, Status)
VALUES
(30, 'Reclama��o C�vel', '02/01/2025', 'Aberto'),
(30, 'Pedido de Indeniza��o', '01/01/2025', 'Aberto');