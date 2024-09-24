create database atletas;

use atletas;

create table atletas(
	cpf varchar(14) not null primary key,
    rg varchar(12),
    nome varchar(100),
    idade int(2),
    peso int(3),
    altura decimal(3,2),
    chuteira int(2),
    salario decimal(10,2),
    bonus decimal(10,2),
    desconto decimal(10,2),
    data_nascimento date,
    posicao varchar(50),
    clube varchar(150),
    numero_camisa int(3)
);

insert into atletas (cpf, rg, nome, idade, peso, altura, chuteira, salario, bonus, desconto, data_nascimento, posicao, clube, numero_camisa)
values ('123456789-90', '98657234-x', 'Tião Carreiro Wonder', 20, 78, 1.80, 48, 27380.90, 10000, 32.90, '2019-02-28', 'Goleiro', 'Lençoense da quebrada', 1);
insert into atletas (cpf, rg, nome, idade, peso, altura, chuteira, salario, bonus, desconto, data_nascimento, posicao, clube, numero_camisa)
values ('987654321-12', '45678923-1', 'João Silva', 25, 85, 1.85, 42, 15000.00, 5000, 50.00, '1998-05-12', 'Atacante', 'Corinthians', 9);
insert into atletas (cpf, rg, nome, idade, peso, altura, chuteira, salario, bonus, desconto, data_nascimento, posicao, clube, numero_camisa)
values ('159753846-32', '15975346-8', 'Carlos Andrade', 23, 78, 1.75, 43, 18000.50, 8000, 70.25, '2000-07-20', 'Meio-campo', 'São Paulo FC', 10);
insert into atletas (cpf, rg, nome, idade, peso, altura, chuteira, salario, bonus, desconto, data_nascimento, posicao, clube, numero_camisa)
values ('753159486-22', '98765432-7', 'Lucas Souza', 28, 90, 1.90, 45, 22000.00, 6000, 40.00, '1995-01-10', 'Zagueiro', 'Palmeiras', 5);
insert into atletas (cpf, rg, nome, idade, peso, altura, chuteira, salario, bonus, desconto, data_nascimento, posicao, clube, numero_camisa)
values ('321654987-54', '32165498-2', 'Pedro Santos', 22, 77, 1.77, 41, 16000.75, 4000, 60.30, '2001-12-15', 'Lateral', 'Flamengo', 2);