create database vendas;

use vendas;

create table Produto(
	Codigo_Produto int not null primary key auto_increment,
    Descricao_Produto varchar(30),
    Preco_produto float
);

create table Nota_fiscal(
	Numero_NF int not null primary key auto_increment,
    Data_NF date,
    Valor_NF float
);

create table Itens(
	Produto_Codigo_Produto int not null auto_increment,
    Nota_fiscal_Numero_NF int not null,
    Num_Item int,
    Qtds_Item int,
    primary key(Produto_Codigo_Produto, Nota_fiscal_Numero_NF)
);