create database boutique;

use boutique;

create table boutique_dados(
id bigint auto_increment,
produto varchar(255) not null,
marca varchar(255) not null,
cor varchar (255) not null,
preco decimal(8,2),
primary key (id)
);

insert into boutique_dados (produto, marca, cor, preco)
values ("Calça Pantacourt","Denner","Branca",159.90);
insert into boutique_dados (produto, marca, cor, preco)
values ("Blusa Manga 3/4","Denner","Verde",119.90);
insert into boutique_dados (produto, marca, cor, preco)
values ("Bolsa Tote Neo Classic","Balançada","Cinza",27391);
insert into boutique_dados (produto, marca, cor, preco)
values ("Vestido ombro a ombro","Balançada","Amarelo",27064);
insert into boutique_dados (produto, marca, cor, preco)
values ("Tênis cano baixo","Ducci","Branco",5230);
insert into boutique_dados (produto, marca, cor, preco)
values ("Polo de algodão listrada","Lagorte","Laranja",389);
insert into boutique_dados (produto, marca, cor, preco)
values ("Camiseta(Unissex)","Adibas","Branca",299.99);
insert into boutique_dados (produto, marca, cor, preco)
values ("Jaqueta Conversível","Adibas","Vermelha",999.99);

select * from boutique_dados;
select * from boutique_dados where preco > 500;
select * from boutique_dados where preco < 500;

update boutique_dados set preco = 20000 where id = 4;