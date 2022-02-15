create database db_farmacia;
use db_farmacia;

create table tb_categoria(
id bigint auto_increment,
uso varchar(50) not null,
primary key (id)
);

insert into tb_categoria(uso)
values ("Oral");
insert into tb_categoria(uso)
values ("Subcutânea");
insert into tb_categoria(uso)
values ("Renal");
insert into tb_categoria(uso)
values ("Nebulização");
insert into tb_categoria(uso)
values ("Ocular");

select * from tb_categoria;

create table tb_produto(
nome varchar(255) not null,
preco decimal (8,2),
tempo varchar (255),
gestante boolean,
receita boolean,
categoria_id bigint,
primary key (nome),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Dipirona",6.25,"30 a 60 min",false,false,1);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Renu",49.90,"4 horas",true,false,5);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Versa",400.52,"indefinido",false,true,2);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Pinetonina",104.90,"1 a 2x ao dia",true,false,3);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Soro fisiológico",71.49,"indefinido",true,false,4);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Buscopan",17.92,"indefinido",false,false,1);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Nimesulida",27.15,"1 a 2 horas",false,true,1);
insert into tb_produto (nome,preco,tempo,gestante,receita,categoria_id)
values ("Doril",33,"a cada 6 horas",false,false,1);

select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "B%";
select * from tb_produto where categoria_id = 4;
select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;