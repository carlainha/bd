create database exercicio2;

use exercicio2;

/*exercicio 6*/
create table fornecedores(
	codfor int not null primary key auto_increment,
    nome varchar(100),
    fone varchar(15)
);

/*exercicio 7*/
create table produtos(
	codpro int not null primary key auto_increment,
    codfor int not null,
    produto varchar(100),
    preco decimal(6,2),
    foreign key(codfor) references fornecedores(codfor)
);

/*exercicio 8*/
insert into fornecedores(nome,fone) values('Luiz','1111-1111'); 
insert into fornecedores(nome,fone) values('Rafaela','2222-2222');

/*exercicio 9*/
insert into produtos(codfor,produto,preco) values (1,'Lâmpada',12.35);
insert into produtos(codfor,produto,preco) values (1,'Abajur',50.65);
insert into produtos(codfor,produto,preco) values (2,'Lápis',3.51);

/*exercicio 10*/
insert into produtos(produto,preco) values ('Lampada',12.35);

/*exercicio 11*/
drop table fornecedores;