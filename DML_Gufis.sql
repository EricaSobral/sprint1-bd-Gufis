USE Gufi;

-- INSERINDO DADOS NA TABELA

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Comum');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'), ('React'), ('SQL');

INSERT INTO Instituicao (CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111', 'Escola SENAI de Informática', 'Alameda Barão de Limeira,538');

INSERT INTO Usuario(NomeUsuario, Email, Senha, DataCadastro,Genero, idTipoUsuario)
VALUES ('Administrador', 'adm@adm.com', 'adm123', '06-02-2020', 'Não Informado', 1),
	   ('Carol', 'carol@email.com', 'carol123', '06-02-2020', 'Feminino', 2),
	   ('Saulo', 'saulo@email.com', 'saulo123', '07-02-2020', 'Masculino', 2);

INSERT INTO Eventos (NomeEvento, AcessoLivre,DataEvento, Descricao, idTipoEvento, idInstituicao)
VALUES ('Orientação a objetos', 1, '07-02-2020', 'Conceitos sobre os pilares da programação', 1,1),
       ('Ciclo de Vida', 0, '08-02-2020','Como utilizar os ciclos de vida com a biblioteca ReactJs',2,1),
	   ('Introdução a SQL',1,'09-02-2020', 'Comandos básicos utilizando SQL Server',3,1);

INSERT INTO Presenca (Situacao, idEvento, idUsuario)
VALUES ('Confirmada',2,2), ('Não Confirmado',3,2), ('Confirmado', 1,3);

SELECT * FROM TipoEvento;
SELECT * FROM TipoUsuario;
SELECT * FROM Instituicao;
SELECT * FROM Usuario;
SELECT * FROM Eventos;
SELECT * FROM Presenca;
