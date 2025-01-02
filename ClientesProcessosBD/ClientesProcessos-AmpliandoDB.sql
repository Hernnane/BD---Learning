CREATE DATABASE ClientesProcessos;

USE ClientesProcessos;

CREATE TABLE Clientes(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Nome NVARCHAR(100) NOT NULL,
	Idade INT NOT NULL,
	Cidade NVARCHAR(50) NOT NULL
);

CREATE TABLE Processos(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	ClienteID INT NOT NULL, --Chave Estrangeira
	Descricao NVARCHAR (100) NOT NULL,
	DataAbertura DATE NOT NULL,
	Status NVARCHAR(30) NOT NULL,
	CONSTRAINT FK_Processos_Clientes FOREIGN KEY (ClienteID)
		REFERENCES Clientes(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

SELECT * FROM Clientes;

SELECT * FROM Processos;

INSERT INTO Clientes (Nome, Idade, Cidade)
VALUES
('Alice Santos', 25, 'São Paulo'),
('Bruno Oliveira', 32, 'Rio de Janeiro'),
('Carla Dias', 28, 'Belo Horizonte'),
('Daniel Costa', 40, 'Curitiba'),
('Eduarda Lima', 35, 'Porto Alegre'),
('Felipe Souza', 22, 'Recife'),
('Gabriela Monteiro', 30, 'Salvador'),
('Hugo Freitas', 50, 'Manaus'),
('Isabela Rocha', 27, 'Fortaleza'),
('João Viana', 45, 'Brasília'),
('Lucas Almeida', 19, 'Campinas'),
('Mariana Silva', 34, 'Natal'),
('Nathalia Azevedo', 21, 'Belém'),
('Otávio Pereira', 37, 'Florianópolis'),
('Paula Ribeiro', 42, 'São Luís'),
('Quênia Moraes', 29, 'Goiânia'),
('Ricardo Cunha', 31, 'Cuiabá'),
('Sabrina Lopes', 26, 'João Pessoa'),
('Thiago Martins', 39, 'Aracaju'),
('Ursula Mendes', 24, 'Teresina'),
('Vinícius Antunes', 48, 'Macapá'),
('Wesley Barbosa', 20, 'Boa Vista'),
('Xavier Nunes', 53, 'Palmas'),
('Yasmin Torres', 36, 'Campo Grande'),
('Zeca Camargo', 60, 'Vitória'),
('Ana Clara Souza', 33, 'São Paulo'),
('Beto Almeida', 41, 'Curitiba'),
('Camila Ferreira', 22, 'Recife'),
('Davi Santos', 27, 'Manaus'),
('Emanuel Oliveira', 35, 'Brasília'),
('Fernanda Carvalho', 38, 'Rio de Janeiro'),
('Giovanni Costa', 47, 'Porto Alegre'),
('Helena Nogueira', 29, 'Fortaleza'),
('Igor Mendes', 23, 'Florianópolis'),
('Juliana Lima', 44, 'Natal'),
('Kelly Barbosa', 26, 'Goiânia'),
('Leonardo Rocha', 31, 'Cuiabá'),
('Marcela Antunes', 25, 'João Pessoa'),
('Nicolas Ribeiro', 39, 'Aracaju'),
('Olívia Cruz', 20, 'Macapá'),
('Pedro Monteiro', 49, 'São Luís'),
('Rafaela Dias', 32, 'Teresina'),
('Samuel Gonçalves', 28, 'Campo Grande'),
('Tainá Costa', 21, 'Campinas'),
('Úrsula Freitas', 34, 'Boa Vista'),
('Victor Souza', 45, 'Palmas'),
('Wanda Nunes', 52, 'Vitória'),
('Xênia Lopes', 37, 'Belém'),
('Yuri Almeida', 30, 'Salvador'),
('Zuleika Ramos', 55, 'Manaus');

INSERT INTO Processos (ClienteID, Descricao, DataAbertura, Status)
VALUES
(1, 'Revisão Contratual', '2023-03-10', 'Em andamento'),
(2, 'Rescisão Trabalhista', '2022-11-15', 'Concluído'),
(3, 'Ação de Cobrança', '2023-05-20', 'Aberto'),
(4, 'Reclamação Cível', '2023-02-18', 'Em andamento'),
(5, 'Pedido de Indenização', '2021-10-12', 'Concluído'),
(6, 'Consultoria Tributária', '2023-01-30', 'Concluído'),
(7, 'Renovação de Contrato', '2023-09-10', 'Aberto'),
(8, 'Revisão de Pensão', '2022-08-05', 'Concluído'),
(9, 'Litígio Comercial', '2023-07-25', 'Em andamento'),
(10, 'Consultoria Previdenciária', '2023-12-01', 'Aberto'),
(11, 'Defesa Trabalhista', '2023-06-11', 'Em andamento'),
(12, 'Revisão de Aluguel', '2022-05-23', 'Concluído'),
(13, 'Pedido de Reajuste', '2023-08-14', 'Aberto'),
(14, 'Contestação Judicial', '2023-04-18', 'Concluído'),
(15, 'Ação de Despejo', '2023-03-25', 'Em andamento'),
(16, 'Reclamação Trabalhista', '2023-10-07', 'Concluído'),
(17, 'Recuperação de Crédito', '2022-01-15', 'Concluído'),
(18, 'Pedido de Redução de Aluguel', '2023-06-30', 'Aberto'),
(19, 'Defesa Civil', '2023-07-05', 'Concluído'),
(20, 'Litígio Administrativo', '2023-09-01', 'Em andamento'),
(21, 'Ação Judicial', '2023-03-12', 'Concluído'),
(22, 'Processo de Inventário', '2023-01-18', 'Em andamento'),
(23, 'Pedido de Pensão', '2022-11-30', 'Aberto'),
(24, 'Revisão de Contrato', '2023-05-09', 'Concluído'),
(25, 'Renegociação de Dívida', '2023-07-17', 'Aberto'),
(26, 'Defesa de Multa', '2023-04-20', 'Em andamento'),
(27, 'Consultoria Jurídica', '2023-08-21', 'Concluído'),
(28, 'Resolução de Litígio', '2023-06-02', 'Em andamento'),
(29, 'Acordo Extrajudicial', '2023-02-15', 'Aberto'),
(30, 'Cobrança de Aluguel', '2023-09-30', 'Concluído'),
(31, 'Contestação de Contrato', '2023-12-19', 'Aberto'),
(32, 'Litígio Trabalhista', '2023-11-25', 'Em andamento'),
(33, 'Pedido de Rescisão', '2023-10-12', 'Aberto'),
(34, 'Anulação de Multa', '2023-01-15', 'Concluído'),
(35, 'Revisão Tributária', '2023-03-05', 'Aberto');