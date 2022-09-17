-- Criando Banco de Dados para E-Commerce --

create database ecommerce;

use ecommerce;

alter table clients auto_increment=1;

create table clients (

       idclient int auto_increment primary key,
	   fname varchar(10),
	   minit char(3),
	   lname varchar(30),
	   CPF char(11) not null,
	   adress varchar(30),
	   constraint unique_cpf_client unique (cpf)
	   );
       
alter table product drop column adress;
ALTER TABLE product add column supplierId int not null;


create table product (

       idproduct int auto_increment primary key,
       supplierId int not null,
	   pname varchar(10) not null,
	   classificacao_kids bool default false,
	   categoria enum('eletronico','Vertimentas','Brinquedos', 'Alimentos','Moveis') not null,
	   avaliacao float default 0,
	   size varchar(10)	   
	   );

create table orders (

       idpOrder int auto_increment primary key,
	   idOrderclient int,
	   orderstatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
	   orderdescription varchar(255),
	   sendvalue float default 10,
	   paymentcash boolean default false,
       constraint fk_orders_client foreign key (idOrderclient) references clients(idclient)
	   
	   );
       

  
drop table payments;
create table payments (

       idclient int,
       idorders_pay int,
	   idpayment int,
	   typepayment enum('Boleto', 'cartão', 'Cartões', 'Dinheiro'),
	   limitavaliable float,	   
	   primary key (idclient, idpayment),
       constraint fk_orders_pay foreign key (idorders_pay) references orders (idOrderClient), 
       constraint fk_orders_client_pay foreign key (idclient) references clients (idclient)

);

create table productstorage (

       idpproductstorage int primary key,
	   storagelocation varchar(45),
	   quantidade int default 0	   
	   
	   );

create table supplier (

       idsupplier int primary key,
	   socialname varchar (255),
       cnpj char (15) not null,
       contact varchar(11) not null,
       constraint unique_cnpj_supplier unique (cnpj)	   
	   
	   );

create table seller  (

       idseller int primary key,
	   socialname varchar (255) not null,
	   abstractname varchar(255),
       cnpj char (15) not null,
	   cpf char (11),
	   location varchar(255),
       contact char(11) not null,
       constraint unique_cnpj_seller unique (cnpj),
       constraint unique_cpf_seller unique (cpf)	   
	   
	   );
	   
create table productSeller (

      idpseller int,
	  idpproduct int,
	  prodquantity int default 1,
	  primary key (idpseller, idpproduct),
	  constraint fk_product_seller foreign key (idpseller) references seller(idseller),
	  constraint fk_product_product foreign key (idpproduct) references product(idproduct)
);

create table productSupplier (

      idpsSupplier int,
	  idpsProduct int,
	  quantity int default 1,
	  primary key (idpsSupplier, idpsProduct),
	  constraint fk_product_supplier_supplier foreign key (idpsSupplier) references supplier(idsupplier),
	  constraint fk_product_supplier_product foreign key (idpsProduct) references product(idproduct)
);

create table productorder (

      idPOproduct int,
	  idPOorder int,
	  poQuantity int default 1,
      poStatus enum('disponivel','Sem estoque') default 'Disponível',
	  primary key (idPOproduct, idPOorder),
	  constraint fk_PO_product foreign key (idPOproduct) references product(idproduct),
	  constraint fk_PO_order foreign key (idPOorder) references orders(idpOrder)
);

alter table storageLocation add column lquantity int default 1;
create table storageLocation (

      idLproduct int,
	  idLstorage int,
	  location varchar(255) not null,
      primary key (idLproduct, idLstorage),
	  constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
	  constraint fk_storage_location_storage foreign key (idLstorage) references productstorage(idpproductstorage)
);

create table delivery (

     id_delivery int not null auto_increment primary key,
     id_pedido_processado int,
     status_entrega enum ('Preparando pacote', 'Aguardando despacho', 'Saiu para entrega', 'Entregue', 'Devolvida') default 'Preparando pacote',
     Dt_entrega date,
     constraint fk_entrega_pedido_processado foreign key (id_pedido_processado) references processa_entrega(id_pedido_p) 

);

create table processa_entrega(

      id_ProcEntrega int not null auto_increment primary key,
      id_pedido_p int,
      id_cliente_p int,
      id_codigo_restreio varchar(45),
      constraint fk_processa_entrega_pedido foreign key (id_pedido_p) references orders(idpOrder)     

);

show tables;

drop table payments;

create table payments (

       idclient int,
       idorders_pay int,
	   idpayment int,
	   idtypepayment int,
	   limitavaliable float,	   
	   primary key (idclient, idpayment),
       constraint fk_orders_pay foreign key (idorders_pay) references orders (idOrderClient), 
       constraint fk_orders_client_pay foreign key (idclient) references clients (idclient),
       constraint fk_payments_types foreign key (idtypepayment) references payments_types (idpayments_types)

);

create table payments_types (

idpayments_types int auto_increment primary key,
nome_pagto enum('Boleto', 'cartão', 'Cartões', 'Dinheiro') not null

);

