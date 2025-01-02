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
('Alice Santos', 25, 'S�o Paulo'),
('Bruno Oliveira', 32, 'Rio de Janeiro'),
('Carla Dias', 28, 'Belo Horizonte'),
('Daniel Costa', 40, 'Curitiba'),
('Eduarda Lima', 35, 'Porto Alegre'),
('Felipe Souza', 22, 'Recife'),
('Gabriela Monteiro', 30, 'Salvador'),
('Hugo Freitas', 50, 'Manaus'),
('Isabela Rocha', 27, 'Fortaleza'),
('Jo�o Viana', 45, 'Bras�lia'),
('Lucas Almeida', 19, 'Campinas'),
('Mariana Silva', 34, 'Natal'),
('Nathalia Azevedo', 21, 'Bel�m'),
('Ot�vio Pereira', 37, 'Florian�polis'),
('Paula Ribeiro', 42, 'S�o Lu�s'),
('Qu�nia Moraes', 29, 'Goi�nia'),
('Ricardo Cunha', 31, 'Cuiab�'),
('Sabrina Lopes', 26, 'Jo�o Pessoa'),
('Thiago Martins', 39, 'Aracaju'),
('Ursula Mendes', 24, 'Teresina'),
('Vin�cius Antunes', 48, 'Macap�'),
('Wesley Barbosa', 20, 'Boa Vista'),
('Xavier Nunes', 53, 'Palmas'),
('Yasmin Torres', 36, 'Campo Grande'),
('Zeca Camargo', 60, 'Vit�ria'),
('Ana Clara Souza', 33, 'S�o Paulo'),
('Beto Almeida', 41, 'Curitiba'),
('Camila Ferreira', 22, 'Recife'),
('Davi Santos', 27, 'Manaus'),
('Emanuel Oliveira', 35, 'Bras�lia'),
('Fernanda Carvalho', 38, 'Rio de Janeiro'),
('Giovanni Costa', 47, 'Porto Alegre'),
('Helena Nogueira', 29, 'Fortaleza'),
('Igor Mendes', 23, 'Florian�polis'),
('Juliana Lima', 44, 'Natal'),
('Kelly Barbosa', 26, 'Goi�nia'),
('Leonardo Rocha', 31, 'Cuiab�'),
('Marcela Antunes', 25, 'Jo�o Pessoa'),
('Nicolas Ribeiro', 39, 'Aracaju'),
('Ol�via Cruz', 20, 'Macap�'),
('Pedro Monteiro', 49, 'S�o Lu�s'),
('Rafaela Dias', 32, 'Teresina'),
('Samuel Gon�alves', 28, 'Campo Grande'),
('Tain� Costa', 21, 'Campinas'),
('�rsula Freitas', 34, 'Boa Vista'),
('Victor Souza', 45, 'Palmas'),
('Wanda Nunes', 52, 'Vit�ria'),
('X�nia Lopes', 37, 'Bel�m'),
('Yuri Almeida', 30, 'Salvador'),
('Zuleika Ramos', 55, 'Manaus');

INSERT INTO Processos (ClienteID, Descricao, DataAbertura, Status)
VALUES
(1, 'Revis�o Contratual', '2023-03-10', 'Em andamento'),
(2, 'Rescis�o Trabalhista', '2022-11-15', 'Conclu�do'),
(3, 'A��o de Cobran�a', '2023-05-20', 'Aberto'),
(4, 'Reclama��o C�vel', '2023-02-18', 'Em andamento'),
(5, 'Pedido de Indeniza��o', '2021-10-12', 'Conclu�do'),
(6, 'Consultoria Tribut�ria', '2023-01-30', 'Conclu�do'),
(7, 'Renova��o de Contrato', '2023-09-10', 'Aberto'),
(8, 'Revis�o de Pens�o', '2022-08-05', 'Conclu�do'),
(9, 'Lit�gio Comercial', '2023-07-25', 'Em andamento'),
(10, 'Consultoria Previdenci�ria', '2023-12-01', 'Aberto'),
(11, 'Defesa Trabalhista', '2023-06-11', 'Em andamento'),
(12, 'Revis�o de Aluguel', '2022-05-23', 'Conclu�do'),
(13, 'Pedido de Reajuste', '2023-08-14', 'Aberto'),
(14, 'Contesta��o Judicial', '2023-04-18', 'Conclu�do'),
(15, 'A��o de Despejo', '2023-03-25', 'Em andamento'),
(16, 'Reclama��o Trabalhista', '2023-10-07', 'Conclu�do'),
(17, 'Recupera��o de Cr�dito', '2022-01-15', 'Conclu�do'),
(18, 'Pedido de Redu��o de Aluguel', '2023-06-30', 'Aberto'),
(19, 'Defesa Civil', '2023-07-05', 'Conclu�do'),
(20, 'Lit�gio Administrativo', '2023-09-01', 'Em andamento'),
(21, 'A��o Judicial', '2023-03-12', 'Conclu�do'),
(22, 'Processo de Invent�rio', '2023-01-18', 'Em andamento'),
(23, 'Pedido de Pens�o', '2022-11-30', 'Aberto'),
(24, 'Revis�o de Contrato', '2023-05-09', 'Conclu�do'),
(25, 'Renegocia��o de D�vida', '2023-07-17', 'Aberto'),
(26, 'Defesa de Multa', '2023-04-20', 'Em andamento'),
(27, 'Consultoria Jur�dica', '2023-08-21', 'Conclu�do'),
(28, 'Resolu��o de Lit�gio', '2023-06-02', 'Em andamento'),
(29, 'Acordo Extrajudicial', '2023-02-15', 'Aberto'),
(30, 'Cobran�a de Aluguel', '2023-09-30', 'Conclu�do'),
(31, 'Contesta��o de Contrato', '2023-12-19', 'Aberto'),
(32, 'Lit�gio Trabalhista', '2023-11-25', 'Em andamento'),
(33, 'Pedido de Rescis�o', '2023-10-12', 'Aberto'),
(34, 'Anula��o de Multa', '2023-01-15', 'Conclu�do'),
(35, 'Revis�o Tribut�ria', '2023-03-05', 'Aberto');