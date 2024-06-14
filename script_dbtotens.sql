create database dbtotens;
use dbtotens;

CREATE TABLE prefeitura (
    idPrefeitura INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
	senha VARCHAR(15)
);

CREATE TABLE totem (
    idTotem INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(255) NOT NULL,
    status_totem text NOT NULL,
    idioma text NOT NULL  
    idPrefeitura INT,
    idUsuario INT,
    FOREIGN KEY (idPrefeitura) REFERENCES prefeitura(idPrefeitura),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL 
);

CREATE TABLE problema (
    idProblema INT PRIMARY KEY AUTO_INCREMENT,
    Descricao TEXT NOT NULL,
    DataRegistro DATE NOT NULL,
    status_problema VARCHAR(50),
    idTotem INT,
    idPrefeitura INT,
    idUsuario INT,
	FOREIGN KEY (idTotem) REFERENCES totem(idTotem),
    FOREIGN KEY (idPrefeitura) REFERENCES prefeitura(idPrefeitura),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);

 





