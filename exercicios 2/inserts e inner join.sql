insert into curso(nome) values ('Marketing');
insert into curso(nome) values ('Desenvolvimento de Sistemas');
insert into curso(nome) values ('Administração');
insert into curso(nome) values ('Química');

insert into aluno(nome,idade) values ('Laura',15);
insert into aluno(nome,idade) values ('Joelma',14);
insert into aluno(nome,idade) values ('Paula',16);
insert into aluno(nome,idade) values ('Carla',17);

insert into matricula(id_curso,id_aluno) values (1,1);
insert into matricula(id_curso,id_aluno) values (2,2);
insert into matricula(id_curso,id_aluno) values (3,3);
insert into matricula(id_curso,id_aluno) values (4,4);

select aluno.nome, curso.nome from matricula inner join aluno on matricula.id_aluno=aluno.id
inner join curso on matricula.id_curso = curso.id;