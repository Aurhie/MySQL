create database db_carnelandia;
use db_carnelandia;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
marca varchar(255) not null,
primary key(id)
);

insert into tb_categoria (tipo,marca)
values ("Bovino","Friboi");
insert into tb_categoria (tipo,marca)
values ("Bovino","Wessel");
insert into tb_categoria (tipo,marca)
values ("Ovina","Cordeiro da Estância");
insert into tb_categoria (tipo,marca)
values ("Suína","Frimesa");
insert into tb_categoria (tipo,marca)
values ("Suína","Nobre");

create table tb_produto(
id bigint auto_increment,
corte varchar(255) not null,
quantidade varchar(255) not null,
valor decimal(8,2),
validade varchar(50) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Maminha","1 quilo",50,"28/08",1);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Bacon", "300g",15.60,"25/08",5);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Picanha","5 quilos",230.59,"28/08",2);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Pernil","2 quilos",120,"26/08",3);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Carré","1 quilo",172,"26/08",3);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Coxão mole","1 quilo",30,"28/08",1);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Alcatra","2 quilos",98,"28/08",2);
insert into tb_produto (corte,quantidade,valor,validade,categoria_id)
values ("Lombo","1 quilo",25.90,"27/08",4);

select * from tb_produto;
select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where corte like "C%";
select * from tb_produto where categoria_id = 3;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;