DROP DATABASE IF EXISTS BD_ENERZEE;
CREATE DATABASE IF NOT EXISTS BD_ENERZEE;

use BD_ENERZEE;

drop table if exists 
	Associado, Engenheiro, Consultor, Franqueado, Franquia,
    Cliente, Pessoa_f, Pessoa_j,
    Proposta, Contrato, Produto, Obra,
    Unidade_geradora, Analise_viabilidade, Concessionaria;

create table Associado (
	id_associado int not null,
    cpf varchar(50) not null,
    email varchar(50) not null,
    telefone int not null,
    endereco varchar(200) not null,
    primary key (id_associado)
);

create table Engenheiro (
	id_engenheiro int not null,
    salario double not null,
    area_atuacao varchar(50) not null,
	foreign key (id_engenheiro) references Associado (id_associado) on delete cascade,
    primary key (id_engenheiro)
);

create table Consultor (
	id_consultor int not null,
    comissao double not null,
	foreign key (id_consultor) references Associado (id_associado) on delete cascade,
    primary key (id_consultor)
);

create table Franquia (
	id_franquia int not null,
    cnpj varchar(50) not null,
    razao_social varchar(50) not null,
    nome_fantasia varchar(50) not null,
    primary key (id_franquia)
);

create table Franqueado (
	id_franqueado int not null,
    id_franquia int not null,
    cargo varchar(50) not null,
	foreign key (id_franqueado) references Associado (id_associado) on delete cascade,
	foreign key (id_franquia) references Franquia (id_franquia) on delete cascade,
    primary key (id_franqueado)
);

create table Cliente (
	id_cliente int not null,
    nome varchar(100) not null,
    email varchar(50) not null,
    telefone int not null,
    endereco varchar(200) not null,
    primary key (id_cliente)
);

create table Pessoa_f (
	id_cliente int not null,
    cpf varchar(50) not null,
    foreign key (id_cliente) references Cliente (id_cliente) on delete cascade,
    primary key (id_cliente)
);

create table Pessoa_j (
	id_cliente int not null,
    cnpj varchar(50) not null,
    foreign key (id_cliente) references Cliente (id_cliente) on delete cascade,
    primary key (id_cliente)
);

create table Produto (
	id_produto int not null,
    nome_prod varchar(100) not null,
	modelo varchar(200) not null,
    potencia double not null,
    preco double not null,
    primary key (id_produto)
);

create table Concessionaria(
	id_concessionaria int not null,
    razao_social varchar(50) not null,
    cnpj varchar(50) not null,
    estado varchar(20) not null,
    primary key (id_concessionaria)
);

create table Proposta (
	id_proposta int not null,
    id_associado int not null,
    id_cliente int not null,
    id_concessionaria int not null,
    id_engenheiro int not null,
	valor_proposta double not null,
    geracao_desejada double not null,
    id_unidade_geradora int not null,
    endereco_instalacao varchar(100) not null,
    consumo_medio double not null,
    tarifa double not null,
    data_analise date not null,
    resultado boolean not null,
    geracao_estimada double not null,
	foreign key (id_associado) references Associado (id_associado) on delete cascade,
	foreign key (id_cliente) references Cliente (id_cliente) on delete cascade,
	foreign key (id_concessionaria) references Concessionaria (id_concessionaria) on delete cascade,
	foreign key (id_engenheiro) references Engenheiro (id_engenheiro) on delete cascade,
    primary key (id_proposta, id_associado, id_cliente)
);

create table Proposta_possui_Produto (
	id_proposta int not null,
    id_produto int not null,
    qntd int not null,
    foreign key (id_proposta) references Proposta (id_proposta) on delete cascade,
    foreign key (id_produto) references Produto (id_produto) on delete cascade,
    primary key (id_proposta, id_produto)
);

create table Obra (
	data_inicial date not null,
    id_proposta int not null,
    prazo_estimado_dias int not null,
    horas_trabalhadas int not null,
    foreign key (id_proposta) references Proposta (id_proposta) on delete cascade,
    primary key (data_inicial, id_proposta)
);

create table Engenheiro_coordena_Obra (
	id_engenheiro int not null,
    data_inicial date not null,
    foreign key (id_engenheiro) references Engenheiro (id_engenheiro) on delete cascade,
    foreign key (data_inicial) references Obra (data_inicial) on delete cascade,
    primary key (id_engenheiro, data_inicial)
);

create table Contrato (
	num_contrato int not null,
    id_proposta int not null,
    nota_fisca varchar(250),
    valor_total double not null,
    data_assinatura date not null,
    foreign key (id_proposta) references Proposta (id_proposta) on delete cascade,
	primary key (num_contrato, id_proposta)
);
