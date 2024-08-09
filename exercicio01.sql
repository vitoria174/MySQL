#Exercicio: criar banco de dados mercadorias, criar uma tabela chamada produtos(idprodutos,nome,preco,categoria),inserir os dados e selecionar nome e preço de produtos onde preço maior que 50.

create table produtos(
idprodutos int not null,
nome varchar (30),
preco float,
categoria varchar (30),
primary key(idprodutos)
)default charset = utf16;

insert into produtos values
('1','celular','1200.50','eletronicos'),
('2','caderno','25.60','papelaria'),
('3','mesa','650','casa'),
('4','tenis','56.90','calçados'),
('5','vestido','78.90','vestuario');

select nome, preco from produtos
where preco > 50;

update produtos
set preco = '45.90'
where idprodutos ='4'
limit 1; 

select * from produtos;

delete from produtos
where idprodutos = '5';


alter table produtos
add column estoque int;

alter table produtos
change column preco preço float;
