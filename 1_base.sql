create TABLE hospedes(
id serial PRIMARY KEY,
nome varchar(50) NOT null,
email varchar(100) NOT null,
telefone varchar(17) NOT null
);

CREATE TABLE enderecos(
id serial PRIMARY KEY,
rua varchar (50),
numero int,
bairro varchar (30),
cidade varchar (50) NOT null,
estado char (2) NOT null
);

CREATE TABLE propriedades (
id serial PRIMARY KEY,
nome_imovel varchar (70) NOT NULL,
capacidade_hospedes int DEFAULT 1,
fk_endereco int NOT NULL REFERENCES enderecos(id)
);

