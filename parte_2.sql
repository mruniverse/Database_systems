DROP DATABASE IF EXISTS BD_ENERZEE;
CREATE DATABASE IF NOT EXISTS BD_ENERZEE;

USE BD_ENERZEE;

CREATE TABLE Associado (
	id_associado INT          NOT NULL,
	nome         VARCHAR(100) NOT NULL,
	cpf          VARCHAR(50)  NOT NULL,
	email        VARCHAR(100) NOT NULL,
	telefone     VARCHAR(20)  NOT NULL,
	endereco     VARCHAR(200) NOT NULL,
	PRIMARY KEY (id_associado));

CREATE TABLE Engenheiro (
	id_engenheiro INT         NOT NULL,
	salario       DOUBLE      NOT NULL,
	area_atuacao  VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_engenheiro) REFERENCES Associado (id_associado) ON DELETE CASCADE,
	PRIMARY KEY (id_engenheiro));

CREATE TABLE Consultor (
	id_consultor INT    NOT NULL,
	comissao     DOUBLE NOT NULL,
	FOREIGN KEY (id_consultor) REFERENCES Associado (id_associado) ON DELETE CASCADE,
	PRIMARY KEY (id_consultor));

CREATE TABLE Franquia (
	id_franquia   INT         NOT NULL,
	cnpj          VARCHAR(50) NOT NULL,
	razao_social  VARCHAR(50) NOT NULL,
	nome_fantasia VARCHAR(50) NOT NULL,
	PRIMARY KEY (id_franquia));

CREATE TABLE Franqueado (
	id_franqueado INT         NOT NULL,
	id_franquia   INT         NOT NULL,
	cargo         VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_franqueado) REFERENCES Associado (id_associado) ON DELETE CASCADE,
	FOREIGN KEY (id_franquia) REFERENCES Franquia (id_franquia) ON DELETE CASCADE,
	PRIMARY KEY (id_franqueado));

CREATE TABLE Cliente (
	id_cliente INT          NOT NULL,
	nome       VARCHAR(100) NOT NULL,
	email      VARCHAR(100) NOT NULL,
	telefone   VARCHAR(20)  NOT NULL,
	endereco   VARCHAR(200) NOT NULL,
	PRIMARY KEY (id_cliente));

CREATE TABLE Pessoa_f (
	id_cliente INT         NOT NULL,
	cpf        VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente) ON DELETE CASCADE,
	PRIMARY KEY (id_cliente));

CREATE TABLE Pessoa_j (
	id_cliente INT         NOT NULL,
	cnpj       VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente) ON DELETE CASCADE,
	PRIMARY KEY (id_cliente));

CREATE TABLE Produto (
	id_produto INT          NOT NULL,
	nome_prod  VARCHAR(100) NOT NULL,
	modelo     VARCHAR(200) NOT NULL,
	potencia   DOUBLE       NOT NULL,
	preco      DOUBLE       NOT NULL,
	PRIMARY KEY (id_produto));

CREATE TABLE Concessionaria (
	id_concessionaria INT         NOT NULL,
	razao_social      VARCHAR(50) NOT NULL,
	cnpj              VARCHAR(50) NOT NULL,
	estado            VARCHAR(20) NOT NULL,
	PRIMARY KEY (id_concessionaria));

CREATE TABLE Obra (
	id_obra             INT  NOT NULL,
	data_inicial        DATE NOT NULL,
	prazo_estimado_dias INT  NOT NULL,
	horas_trabalhadas   INT  NOT NULL,
	PRIMARY KEY (id_obra));

CREATE TABLE Engenheiro_coordena_obra (
	id_engenheiro INT NOT NULL,
	id_obra       INT NOT NULL,
	FOREIGN KEY (id_engenheiro) REFERENCES Engenheiro (id_engenheiro) ON DELETE CASCADE,
	FOREIGN KEY (id_obra) REFERENCES Obra (id_obra) ON DELETE CASCADE,
	PRIMARY KEY (id_engenheiro, id_obra));

CREATE TABLE Proposta (
	id_proposta         INT          NOT NULL,
	id_associado        INT          NOT NULL,
	id_cliente          INT          NOT NULL,
	id_concessionaria   INT          NOT NULL,
	id_engenheiro       INT          NOT NULL,
	id_obra             INT          NOT NULL,
	valor_proposta      DOUBLE       NOT NULL,
	geracao_desejada    DOUBLE       NOT NULL,
	id_unidade_geradora INT          NOT NULL,
	endereco_instalacao VARCHAR(100) NOT NULL,
	consumo_medio       DOUBLE       NOT NULL,
	tarifa              DOUBLE       NOT NULL,
	data_analise        DATE         NOT NULL,
	resultado           BOOLEAN      NOT NULL,
	geracao_estimada    DOUBLE       NOT NULL,
	FOREIGN KEY (id_associado) REFERENCES Associado (id_associado) ON DELETE CASCADE,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente) ON DELETE CASCADE,
	FOREIGN KEY (id_concessionaria) REFERENCES Concessionaria (id_concessionaria) ON DELETE CASCADE,
	FOREIGN KEY (id_engenheiro) REFERENCES Engenheiro (id_engenheiro) ON DELETE CASCADE,
	FOREIGN KEY (id_obra) REFERENCES Obra (id_obra) ON DELETE CASCADE,
	PRIMARY KEY (id_proposta, id_associado, id_cliente));

CREATE TABLE Proposta_possui_produto (
	id_proposta INT NOT NULL,
	id_produto  INT NOT NULL,
	qntd        INT NOT NULL,
	FOREIGN KEY (id_proposta) REFERENCES Proposta (id_proposta) ON DELETE CASCADE,
	FOREIGN KEY (id_produto) REFERENCES Produto (id_produto) ON DELETE CASCADE,
	PRIMARY KEY (id_proposta, id_produto));

CREATE TABLE Contrato (
	num_contrato    INT    NOT NULL,
	id_proposta     INT    NOT NULL,
	nota_fisca      VARCHAR(250),
	valor_total     DOUBLE NOT NULL,
	data_assinatura DATE   NOT NULL,
	FOREIGN KEY (id_proposta) REFERENCES Proposta (id_proposta) ON DELETE CASCADE,
	PRIMARY KEY (num_contrato, id_proposta));
