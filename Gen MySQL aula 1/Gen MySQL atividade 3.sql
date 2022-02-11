create database escolaDB;

use escolaDB;

create table escola_dados(
id bigint auto_increment,
nome varchar(255) not null,
serie varchar(255) not null,
sala varchar(255) not null,
nota decimal(8,2),
primary key (id)
);

insert into escola_dados (nome, serie, sala, nota)
values ("Maria","9º ano fundamental",7,8);
insert into escola_dados (nome, serie, sala, nota)
values ("Jonas","2º ano médio",12,6.5);
insert into escola_dados (nome, serie, sala, nota)
values ("Patricia","5º ano fundamental",4,9);
insert into escola_dados (nome, serie, sala, nota)
values ("Luana","1º ano médio",9,4.5);
insert into escola_dados (nome, serie, sala, nota)
values ("John","7º ano fundamental",6,7.5);
insert into escola_dados (nome, serie, sala, nota)
values ("Ethan","3º ano médio",15,10);
insert into escola_dados (nome, serie, sala, nota)
values ("Aurora","1º ano fundamental",1,9);
insert into escola_dados (nome, serie, sala, nota)
values ("Henry","3º ano médio",14,10);

select * from escola_dados;
select * from escola_dados where nota >7;
select * from escola_dados where nota <7;