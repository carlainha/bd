create database exercicio;

use exercicio;

create table amigos(
	nome_id varchar(100) not null primary key,
    idade int(2),
    telefone varchar(15),
    sexo char(1) check(upper(sexo)='M' or upper(sexo)='F'),
    altura decimal(3,2),
    faculdade varchar(200)
);

create table clientes(
	id int not null primary key auto_increment,
	cpf varchar(15) unique, 
    nome_id varchar(100),
    pagamento decimal(6,2),
    email varchar(100),
    telefone varchar(15),
    celular varchar(15),
    foreign key (nome_id) references amigos(nome_id)
);

create table produtos(
	idprod int not null primary key auto_increment,
    tipo varchar(100),
    preco decimal(6,2),
    qntd int(100),
    nome_prod varchar(150),
    data_valid date,
    data_compra date,
    marca varchar(100),
    cliente_id int not null,
    foreign key (cliente_id) references clientes(id)
);

insert into amigos(nome_id, idade, telefone, sexo, altura, faculdade) values ('José',20,'8888-8888','M',1.75,'Unesp');

insert into clientes(cpf,nome_id,pagamento,email,telefone,celular) values ('111','José',1000,'jose@gmail.com','5555-5555','99999-9999');

insert into produtos(tipo,preco,qntd,nome_prod,data_valid,data_compra,marca,cliente_id) values ('Refrigerante',6.50,1,'Refrigerante de cola','2024-12-12','2024-09-10','Coca-Cola',1);