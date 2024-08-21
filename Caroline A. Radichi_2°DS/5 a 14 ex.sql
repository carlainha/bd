alter table Produto modify column Descricao_Produto varchar(50);

alter table Nota_Fiscal add column ICMS int after Numero_NF;

alter table produto add column Peso float;

alter table itens drop primary key;
alter table itens add constraint PK_Itens primary key (Num_Item);

select * from  produto;

select * from  Nota_Fiscal;

alter table Nota_Fiscal rename column Valor_NF to ValorTotal_NF;

alter table Nota_Fiscal drop column Data_NF;

drop table Itens;

rename table Nota_Fiscal to Venda;