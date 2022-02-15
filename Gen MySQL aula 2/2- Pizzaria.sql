create database db_pizzaria;
use db_pizzaria;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tempoDePreparoEmMinutos int,
primary key(id)
);

insert into tb_categoria(tipo, tempoDePreparoEmMinutos)
values ("Tradicional",35);
insert into tb_categoria(tipo, tempoDePreparoEmMinutos)
values ("Pizza Doce",30);
insert into tb_categoria(tipo, tempoDePreparoEmMinutos)
values ("Dois sabores",40);
insert into tb_categoria(tipo, tempoDePreparoEmMinutos)
values ("Beirute",25);
insert into tb_categoria(tipo, tempoDePreparoEmMinutos)
values ("Fogazza",30);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
Sabor varchar(255) not null,
tamanho varchar(255) not null,
preco decimal(8,2),
bordaRecheada boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Palmito","Grande",49.90,true,1);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Banana","Média",35.90,false,2);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Bacon e Calabresa","Grande",39.90,true,3);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Tradicional","Média",24.90,false,4);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Calabresa e 5 queijos","Grande",59.90,true,3);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Romeu e Julieta","Brotinho",19.90,false,2);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Bacon","Grande",24.90,false,1);
insert into tb_pizza (sabor,tamanho,preco,bordaRecheada,categoria_id)
values ("Frango com catupiry","Grande",39.90,true,1);

select * from tb_pizza;
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "C%";
select * from tb_produto where categoria_id = 1;
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;