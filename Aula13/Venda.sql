create table cliente (
	id_cliente int primary key,
	nome_cliente varchar (40) not null,
	sobrenome_cliente varchar (40) not null
);

create table produto(
	id_produto int primary key,
	nome_produto varchar (50) not null,
	descricao varchar (100) not null,
	preco numeric check (preco > 0) not null,
	qtde_estoque smallint default 0
);

create table pedido(
	id_pedido serial primary key,
	id_cliente int not null references clientes(id_cliente),
	id_produto int not null,
	qtde smallint not null,
	foreign key (id_produto) references produto(id_produto)
)


INSERT INTO Cliente(ID_Cliente, Nome_Cliente, Sobrenome_Cliente)
Values (1, ‘João’, ‘Silveira’);