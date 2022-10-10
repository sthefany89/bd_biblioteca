use bibliotec;

create table emprestimo (
id_emprestimo int not null auto_increment,
id_usuario int,
id_titulo int,
data_emprestimo date,
desconto varchar (10),
primary key (id_emprestimo)
) default charset = utf8;

create table usuario (
id_usuario int not null auto_increment,
nome_usuario varchar (15),
telefone varchar (15),
endereco varchar (20),
primary key (id_usuario)
) default charset = utf8;

create table autores (
id_autores int not null auto_increment,
nome varchar (15),
telefone varchar (14),
endereco varchar (20),
primary key (id_autores)
) default charset = utf8;

create table titulo (
id_titulo int not null auto_increment,
id_autores int,
id_editora int,
id_exemplares int,
id_area_de_conhecimento int,
id_palavra_chave int,
nome varchar (15),
genero varchar (1),
primary key (id_titulo)
) default charset = utf8;

create table editora (
id_editora int not null auto_increment,
nome varchar (20),
telefone varchar (15),
endereco varchar (25),
primary key (id_editora)
) default charset = utf8;

create table exemplares (
id_exemplares int not null auto_increment,
descricao varchar (20),
primary key (id_exemplares)
) default charset = utf8;

create table palavra_chave (
id_palavra_chave int not null auto_increment,
descricao varchar (20),
primary key (id_palavra_chave)
) default charset = utf8;

create table area_de_conhecimento (
id_area int not null auto_increment,
descricao varchar (20),
primary key (id_area)
) default charset = utf8;

insert into emprestimo (id_usuario, id_titulo, data_emprestimo, desconto)
values ('12', '2', '2022/10/01', '20%');

insert into usuario (nome_usuario, telefone, endereco)
values ('lucas martins', '41984411849', 'Rua Arsenio Bento dos Santos');

insert into autores (nome, telefone, endereco)
values ('best-seller', '41984435673', 'Rua Pereira Santos');

insert into titulo (id_autores, id_editora, id_exemplares, id_area_de_conhecimento, id_palavra_chave, nome, gerenero)
values ('1', '1', '1', '1', '2', 'É ASSIM QUE ACABA', 'Romance');

insert into editora (nome, telefone, endereco)
values ('Collen Hoover', '41983354736', 'Rua Sao Matias');

insert into exemplares (descricao)
values ('Um romance sobre as escolhas corretas nas situações mais dificeis.');

insert into palavra_chave (descricao)
values ('LIVRO');

insert into area_de_conhecimento (descricao)
values ('Uma narrativa poderosa sobre a força necessaria para fazer as escolhas certas nas situações mais dificeis.');
