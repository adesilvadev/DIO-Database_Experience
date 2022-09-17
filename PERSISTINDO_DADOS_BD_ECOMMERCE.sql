-- Persistindo os dados -- padrao 6 linhas --;

insert into clients (fname,minit,lname,cpf,adress) values

('Maria','S','Souza',12345678912,'Rua que sobe e desce'),
('Joaquim','J','Silva Xavier',54645678912,'Rua que sobe e desce'),
('Antonio','H','Coiselheiro',34245678912,'Rua que sobe e desce'),
('Carlos','D','Andrade',22245678912,'Rua que sobe e desce'),
('Mauricio','D','Souza',88845678912,'Rua que sobe e desce'),
('Monteiro','A','Lobato',77745678912,'Rua que sobe e desce')
;

insert into product (pname, classificacao_kids, categoria, avaliacao, size) values
('Rack','0','Moveis',5,'G'),
('T-Shirt','1','Vertimentas',5,'GG'),
('Pstation','0','Brinquedos',5,'M'),
('Trakinas','0','Alimentos',5,'P'),
('TV','0','eletronico',5,'G'),
('Sofa','0','moveis',5,'G')
;

select * from product;

insert into storagelocation (idLproduct, idLstorage, location) values
(13,13, 'setor A'),
(14,14, 'setor E'),
(15,15, 'setor B'),
(16,16, 'setor J'),
(17,17, 'setor B'),
(18,18, 'setor A')
;

SELECT * FROM productstorage;

      
insert into supplier (idsupplier,socialname,cnpj,contact) values

(1,'Sony',112345678901234,21922223333),
(2,'Bartira',212345678901234,21822223333),
(3,'Bah Alimentos',312345678901234,21722223333),
(4,'Nike',412345678901234,21622223333)
;

insert into clients (fname,minit,lname,cpf,adress) values

('Maria','S','Souza',12345678912,'Rua que sobe e desce'),
('Joaquim','J','Silva Xavier',54645678912,'Rua que sobe e desce'),
('Antonio','H','Coiselheiro',34245678912,'Rua que sobe e desce'),
('Carlos','D','Andrade',22245678912,'Rua que sobe e desce'),
('Mauricio','D','Souza',88845678912,'Rua que sobe e desce'),
('Monteiro','A','Lobato',77745678912,'Rua que sobe e desce')
;

insert into seller (idseller, socialname, abstractname, cnpj, location, contact) values
(4,'Sony','Sony',112345678901234,'Rua das Flores, 10', 21922223333),
(5,'Bartira','Bartira',212345678901234,'Rua das Flores, 10', 21822223333),
(6,'Bah Alimentos','Bah Alimentos',312345678901234,'Rua das Flores, 10', 21722223333);

INSERT INTO ORDERS (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values

(1,default,'Via aplicativo',null,1),
(2,'Em processamento','Via Web Site',50,0),
(3,'Confirmado',null,null,1),
(4,'Em processamento','Via aplicativo',150,0)
;

delete from orders where idOrderClient > 0;
select * from orders;
select * from clients;

insert into payments (idclient, idorders_pay,idpayment,idtypepayment) values
(5,7,1,4);


insert into payments_types (nome_pagto) values ('Boleto'),('cartão'),('Cartões'),('Dinheiro');
select * from payments_types;







