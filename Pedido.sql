create database Pedido


create table Cliente (
  CodCli int not null,
  NomeCli varchar(50) not null, 
    
  constraint PK_CLiente PRIMARY key (CodCli),
  
)

create table Pedido(
 NumeroPedido int not null,
DataPed datetime not null,
CodCli int not null

constraint PK_Pedido primary key (numeroPedido) ,
constraint FK_Pedido foreign key (CodCli) references Cliente(CodCli)


);




create table Pedido_Telefone(
    NumeroPedido int not null,
    NumeroTelefone varchar(14) not null

    constraint PK_Pedido_Telefone primary key ( NumeroPedido, NumeroTelefone),
    constraint FK_Pedido_Telefone foreign key (NumeroPedido) references Pedido(NumeroPedido)
    
)

create table Peca(
    CodPeca int not null,
    DescrPeca varchar(100) not NULL
    constraint PK_Peca primary key (CodPeca)
   
);

create table Item_Pedido(

    NumeroPedido int not null,
    CodPeca int not null,
    QuantPeca int not NULL

    CONSTRAINT PK_Item_Pedido primary key ( NumeroPedido, CodPeca),
    constraint FK_Item_Pedido FOREIGN key ( NumeroPedido) references Pedido ( NumeroPedido),
    constraint FK_Item_Peca foreign key ( CodPeca) references Peca(CodPeca)

)



