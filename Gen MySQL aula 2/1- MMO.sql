create database db_game;

use db_game;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
arma varchar(255) not null,
primary key(id)
);

insert into tb_classes (nome,habilidade,arma)
values ("Mago","Bola de fogo","Cajado");
insert into tb_classes (nome,habilidade,arma)
values ("arqueiro","Chuva de flecha","Arco e flecha");
insert into tb_classes (nome,habilidade,arma)
values ("Lutador","Soco na boca","Punho");
insert into tb_classes (nome,habilidade,arma)
values ("Guerreiro","Investida Furiosa","Claymore");
insert into tb_classes (nome,habilidade,arma)
values ("Sacerdote","Ressureição","Cajado");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classes (id)
);

insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Aslatiel", 43, 1467, 980, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Cachorro", 60, 8000, 8000, 5);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Sir Arthur Pendragon",50, 3450, 1500, 4);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Bolivia",10, 350, 210,3);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values("Gwyndolin", 60, 14329,4300, 2);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Medivh",61, 23100, 13000, 1);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Midoriya",2, 30000, -999, 3);
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id)
values ("Todoroki", 50, 7650, 1200, 1);

select * from tb_personagens;
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where classe_id = 4;
select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id  = tb_classes.id;