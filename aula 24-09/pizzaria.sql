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
    data datetime,
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

insert into pizza(nome,valor) values('Portuguesa',15);
insert into pizza(nome,valor) values('Provolone',17);
insert into pizza(nome,valor) values('4 Queijos',20);
insert into pizza(nome,valor) values('Calabresa',17);
insert into pizza(nome,valor) values('Escarola,22');
insert into cliente values (1,'(11) 1111-1111','Alexandre Santos', 'Rua das Palmeiras', 111, null,'Bela Vista','Em frente a ecola');

