--DQL
USE Gufi;
	-- TODOS OD USU�RIOS CADASTRADOS
	SELECT * FROM Usuario;

	-- TODOS OS TIPO DE EVENTO 
	SELECT * FROM TipoEvento;

	-- TODAS AS INSTITUI��ES CADASTRADAS
	SELECT * FROM Instituicao;

	-- TODOS OS EVENTOS CADASTRADOS
	SELECT * FROM Eventos;

	-- LISTA DOS EVENTOS QUE S�O P�BLICOS
	SELECT NomeEvento, DataEvento, TipoEvento.TituloTipoEvento, Instituicao.NomeFantasia FROM Eventos
	INNER JOIN Instituicao	ON Instituicao.idInstituicao = Eventos.idInstituicao
	INNER JOIN TipoEvento ON   TipoEvento.idTipoEvento = Eventos.idTipoEvento
	WHERE AcessoLivre = 1;

	-- LISTAR TODOS OS EVENTOS QUE UM DETERMINADO USU�RIO PARTICIPA
	SELECT  FROM Presenca
	INNER JOIN Usuario  ON Presenca.idUsuario = Usuario.idUsuario
	INNER JOIN Eventos ON  Presenca.idEvento = Eventos.idEvento
	WHERE Presenca.idUsuario = 2;

	--LISTAR TODOS OS USU�RIOS CADASTRADOS (N)