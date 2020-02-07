--DQL
USE Gufi;
	-- TODOS OD USUÁRIOS CADASTRADOS
	SELECT * FROM Usuario;

	-- TODOS OS TIPO DE EVENTO 
	SELECT * FROM TipoEvento;

	-- TODAS AS INSTITUIÇÕES CADASTRADAS
	SELECT * FROM Instituicao;

	-- TODOS OS EVENTOS CADASTRADOS
	SELECT * FROM Eventos;

	-- LISTA DOS EVENTOS QUE SÃO PÚBLICOS
	SELECT NomeEvento, DataEvento, TipoEvento.TituloTipoEvento, Instituicao.NomeFantasia FROM Eventos
	INNER JOIN Instituicao	ON Instituicao.idInstituicao = Eventos.idInstituicao
	INNER JOIN TipoEvento ON   TipoEvento.idTipoEvento = Eventos.idTipoEvento
	WHERE AcessoLivre = 1;

	-- LISTAR TODOS OS EVENTOS QUE UM DETERMINADO USUÁRIO PARTICIPA
	SELECT  FROM Presenca
	INNER JOIN Usuario  ON Presenca.idUsuario = Usuario.idUsuario
	INNER JOIN Eventos ON  Presenca.idEvento = Eventos.idEvento
	WHERE Presenca.idUsuario = 2;

	--LISTAR TODOS OS USUÁRIOS CADASTRADOS (N)