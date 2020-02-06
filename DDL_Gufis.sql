CREATE DATABASE Gufi;

--Define o banco de dados que será utilizado
USE Gufi;

-- Criação de tabelas
CREATE TABLE TipoUsuario(
idTipoUsuario INT PRIMARY KEY IDENTITY,
TituloTipoUsuario VARCHAR (500) NOT NULL UNIQUE
);

CREATE TABLE TipoEvento(
idTipoEvento INT PRIMARY KEY IDENTITY,
TituloTipoEvento VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Instituicao (
idInstituicao INT PRIMARY KEY IDENTITY,
CNPJ CHAR (14) NOT NULL UNIQUE,
NomeFantasia VARCHAR (255) NOT NULL UNIQUE,
Endereco VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY IDENTITY,
NomeUsuario VARCHAR(255) NOT NULL,
Email VARCHAR (100) NOT NULL UNIQUE,
Senha VARCHAR (100) NOT NULL,
DataCadastro DATETIME2 NOT NULL, 
Genero VARCHAR (255),
idTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
);

CREATE TABLE Eventos(
NomeEvento INT PRIMARY KEY IDENTITY,
AcessoLivre BIT NOT NULL,
DataEvento DATETIME2(100) NOT NULL UNIQUE,
Descricao VARCHAR (100) NOT NULL,
idTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
idInstiticao INT FOREIGN KEY REFERENCES Instituicao (idInstituicao)
);
