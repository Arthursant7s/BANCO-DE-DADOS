create database Loja;-- Comando para criar o banco
use Loja;

create table Clientes (
idCliente int primary key auto_increment,
nome varchar(45) not null,
email varchar(45),
cidade varchar(45) not null
);

insert into Clientes (nome,email,cidade)
values ('João','Joao@gmail.com','Salvador'),
('Maria','Maria@gmail.com','Salvador');

insert into Clientes (nome,cidade)
values ('Renan','Feira de Santana');

select * from Clientes;


delete from Clientes
where idClientes =6;-- deleta 1 cliente

delete from Clientes
where idClientes IN (6,7,8); -- deleta varios client

update Clientes
set nome = 'Arthur',
email = 'Arthur@gmail.com',
cidade = 'Salvador'
where idClientes = 6;

alter table Clientes
modify cidade varchar(100);

alter table Clientes
add idade int not null;

alter table Clientes
add telefone int;

alter table Clientes
drop column telefone;