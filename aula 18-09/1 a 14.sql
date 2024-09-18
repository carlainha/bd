create database atividade;

use atividade;

create table clientes(
	id int not null primary key auto_increment,
    nome varchar(150),
	cpf varchar(15) unique, 
    email varchar(100),
    telefone varchar(15),
    celular varchar(15)
);

create table produtos(
	idprod int not null primary key auto_increment,
    preco decimal(6,2),
    qntd int(100),
    nome_prod varchar(150),
    data_valid date,
    data_compra date,
    cliente_id int not null,
    foreign key (cliente_id) references clientes(id)
);

/*exercicio 1*/
insert into clientes(nome,cpf,email,telefone,celular) values ('José','111','jose@gmail.com','5555-5555','99999-9999');
insert into clientes(nome,cpf,email,telefone,celular) values ('Carla','222','carla@gmail.com','5555-5555','99999-9999');

/*exercicio 2*/
select * from clientes;

/*exercicio 3*/
drop table produtos;

/*exercicio 4*/
create table produtos(
	idprod int not null primary key auto_increment,
    preco decimal(6,2),
    qntd int(100),
    nome_prod varchar(150),
    data_valid date,
    data_compra date,
    cliente_id int not null,
	tipo varchar(100) null,
    marca varchar(100),
    foreign key (cliente_id) references clientes(id)
);

/*exercicio 5*/
insert into produtos(tipo,preco,qntd,nome_prod,data_valid,data_compra,marca,cliente_id) values ('Refrigerante',6.50,1,'Refrigerante de cola','2024-12-12','2024-09-10','Coca-Cola',1);

/*exercicio 6*/
insert into produtos(tipo,preco,qntd,nome_prod,data_valid,data_compra,cliente_id) values ('Doce',2.30,1,'Paçoca','2024-12-12','2024-09-10',1);

/*exercicio 7*/
drop table clientes;

/*exercicio 8*/
drop table produtos;
drop table clientes;

create table clientes(
	id int not null,
    nome varchar(150) not null,
	cpf varchar(15) unique, 
    email varchar(100),
    telefone varchar(15),
    celular varchar(15),
    primary key (id,nome)
);

create table produtos(
	idprod int not null primary key,
    preco decimal(6,2),
    qntd int(100),
    nome_prod varchar(150),
    data_valid date,
    data_compra date,
    cliente_id int not null,
	tipo varchar(100) null,
    marca varchar(100),
    foreign key (cliente_id) references clientes(id)
);

alter table clientes drop column nome;

/*exercicio 9*/
drop table produtos;
drop table clientes;

/*exercicio 10*/
create table clientes(
	id int not null primary key auto_increment,
    nome varchar(150) not null,
	cpf varchar(15) unique, 
    email varchar(100) null,
    telefone varchar(15),
    celular varchar(15)
);

/*exercicio 11*/
insert into clientes(nome,cpf,email,telefone,celular) values ('José','111','jose@gmail.com','5555-5555','99999-9999');

/*exercicio 12*/
insert into clientes(nome,cpf,telefone,celular) values ('José','222','5555-5555','99999-9999');

/*exercicio 13*/
select * from clientes;

/*exercicio 14*/
insert into clientes(id,nome,cpf,telefone,celular) values (1,'José','222','5555-5555','99999-9999');