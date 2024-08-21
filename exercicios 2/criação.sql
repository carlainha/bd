create database escola;

use escola;

create table curso(
	id int not null primary key auto_increment,
    nome varchar(100)
);

create table aluno(
	id int not null primary key auto_increment,
    nome_curso varchar(100),
    idade int
);

create table matricula(
	id int not null primary key auto_increment,
    id_aluno int not null,
	id_curso int not null
);

alter table matricula add constraint fk_curso_matricula foreign key (id_curso) references curso(id);

alter table matricula add constraint fk_aluno_matricula foreign key (id_aluno) references aluno(id);