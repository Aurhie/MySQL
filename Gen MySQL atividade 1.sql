create database RH;

use RH;

create table RH_dados(
id bigint auto_increment,
nome varchar(255) not null,
setor varchar(255) not null,
funcao varchar(255) not null,
salario decimal(8,2),
primary key (id)
);

insert into RH_dados (nome, setor, funcao, salario)
values ("Jorge", "ADM","Assistente Adm", 1350);
insert into RH_dados (nome, setor, funcao, salario)
values ("Diana", "Direção","CEO", 45430);
insert into RH_dados (nome, setor, funcao, salario)
values ("Carlos","ADM","Supervisor", 4000);
insert into RH_dados (nome, setor, funcao, salario)
values ("Pericles","Limpeza","Faxineiro",1200);
insert into RH_dados (nome, setor, funcao, salario)
values ("Ingrid", "Limpeza","Chefe de limpeza", 3500);

select * from RH_dados;
select * from RH_dados where salario > 2000;
select * from RH_dados where salario < 2000;

update RH_dados set salario = 1600 where id = 1;