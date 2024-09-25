create database pizzaria;

use pizzaria;

create table cliente(
	cliente_id int not null primary key auto_increment,
    telefone varchar(15),
    nome varchar(30),
    logradouro varchar(30),
    numero decimal (5,0),
    complemento varchar(30),
    bairro varchar(30),
    referencia varchar(30)
);

create table pizza(
	pizza_id int not null primary key auto_increment,
    nome varchar(30),
    descricao varchar(30),
    valor decimal(4,2)
);

create table pedido(
	pedido_id int not null primary key auto_increment,
    cliente_id int not null,
    data_hora datetime,
    valor decimal(5,2),
    foreign key(cliente_id) references cliente(cliente_id)
);

create table item_pedido(
	pedido_id int not null,
    pizza_id int not null,
    quantidade decimal(2,0),
    valor decimal(5,2),
    foreign key(pedido_id) references pedido(pedido_id),
    foreign key(pizza_id) references pizza(pizza_id)
);

insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('(11) 1111-1111','Alexandre Santos', 'Rua das Palmeiras', 111,'Bela Vista','Em frente a ecola');
insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('Bruna Dantas','(22)2222-2222','Rua das Rosas',222,'Cantareira',null);
insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('Carlos Vieira','(33)3333-3333','Rua das Avencas',333,'Bela Vista',null);
insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('Julia Silva','(44)4444-4444','Rua dos Cravos',444,'Cantareira','Esquina do mercado');
insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('Mariana Silva','(55)5555-5555','Rua das Acácias',555,'Bela Vista',null);
insert into cliente (nome,telefone,logradouro,numero,bairro,referencia) values ('Laura Madureira','(66)6666-6666','Rua das Gardênias',666,'Cantareira',null);

insert into pizza(nome,valor) values('Portuguesa',15);
insert into pizza(nome,valor) values('Provolone',17);
insert into pizza(nome,valor) values('4 Queijos',20);
insert into pizza(nome,valor) values('Calabresa',17);
insert into pizza(nome,valor) values('Escarola',22);

insert into pedido(cliente_id,data_hora,valor) values (1,'2016-12-15 20:30:00',32);
insert into pedido(cliente_id,data_hora,valor) values (2,'2016-12-15 20:38:00',40);
insert into pedido(cliente_id,data_hora,valor) values (3,'2016-12-15 20:59:00',22);
insert into pedido(cliente_id,data_hora,valor) values (1,'2016-12-17 22:00:00',42);
insert into pedido(cliente_id,data_hora,valor) values (2,'2016-12-18 19:00:00',45);
insert into pedido(cliente_id,data_hora,valor) values (3,'2016-12-18 21:12:00',44);
insert into pedido(cliente_id,data_hora,valor) values (4,'2016-12-19 22:22:00',72);
insert into pedido(cliente_id,data_hora,valor) values (6,'2016-12-19 22:26:00',34);

insert into item_pedido values(1,1,1,15);
insert into item_pedido values(1,4,1,17);
insert into item_pedido values(2,3,2,40);
insert into item_pedido values(3,5,1,22);
insert into item_pedido values(4,3,1,20);
insert into item_pedido values(4,5,1,22);
insert into item_pedido values(5,1,3,45);
insert into item_pedido values(6,5,2,44);
insert into item_pedido values(7,1,2,30);
insert into item_pedido values(7,3,1,20);
insert into item_pedido values(7,5,1,22);
insert into item_pedido values(8,4,2,34);