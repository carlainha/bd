/*exercicio 15*/
create database hospital;

use hospital;

/*exercicio 16*/
create table medico(
	id int not null auto_increment,
    nome varchar(150),
    crm varchar(15),
	especializacao varchar(150),
    salario decimal(6,2),
    telefone varchar(15),
    primary key(id)
);

create table paciente(
	id int not null auto_increment,
    nome varchar(150) not null,
    datadensc date,
	alergias varchar(150),
	cpf varchar(15),
    telefone varchar(15),
    primary key(id, nome)
);

create table consulta(
	id int not null primary key auto_increment,
    valor decimal(3,2),
    dia date,
	id_medico int not null,
	id_paciente int not null,
    convenio varchar(100) null,
    foreign key (id_medico) references medico(id),
	foreign key (id_paciente) references paciente(id)
);

/*exercicio 17*/
insert into medico(nome,crm,especializacao,salario,telefone) values ('Marcos','CRM/SP 123456','cardiologista',50000.00,'9999-9999');
insert into medico(nome,crm,especializacao,salario,telefone) values ('Carlos','CRM/SP 123456','ortopedista',35000.00,'9999-9999');

insert into paciente(nome,datadensc,alergias,cpf,telefone) values ('Beatriz','2009-03-26','dipirona','111.111.333','9999-9999');
insert into paciente(nome,datadensc,alergias,cpf,telefone) values ('Fernando','2000-05-26','loratadina','111.111.353','9999-9999');

insert into consulta(valor,dia,id_medico,id_paciente) values (56.20,'2024-09-12',1,2);
insert into consulta(valor,dia,id_medico,id_paciente,convenio) values (100,'2024-09-15',2,2,'unimed');

/*exercicio 18*/
insert into medico(id,nome,crm,especializacao,salario,telefone) values (1,'Flavia','CRM/SP 123456','ginecologista',50000.00,'9999-9999');
insert into consulta(id,valor,dia,id_medico,id_paciente) values (1,18.65,'2024-09-14',2,1);

/*exercicio 19*/
insert into paciente(id,nome,datadensc,alergias,cpf,telefone) values (1,'Beatriz','2009-03-26','dipirona','111.111.333','9999-9999');

/*exercicio 20*/
select * from medico;
select * from paciente;
select * from consulta;

