-- CONSISTIR DADOS NO SCHEMA OFICINA DIO

insert into cadastro_fabricantes (nome_fabri) values ('Chevrolet'),('Fiat'),('Renault'),('Volkswagen'),('Toyota'),('Nissan'),('Honda'),('Kia Motors'),('Ford');
select * from cadastro_fabricantes;

-- sucesso!

insert into cadastro_veiculos (cod_fabri_vei ,modelo, ano_faricacao, nr_portas, nr_eixos) values
(1,'Cobalt',2021,4,4), (1,'Cobalt',2022,4,4), (1,'Prisma',2021,4,4), (1,'Prisma',2022,4,4), (2,'Palio',2021,4,4), (2,'Palio',2022,4,4), (2,'Uno',2020,4,4), (2,'Uno',2021,4,4),
(3,'Duster',2021,4,4), (3,'Duster',2022,4,4), (4,'Gol',2001,4,4), (4,'Gol',2021,4,4), (4,'Gol',2022,4,4), (5,'Corolla',2021,4,4), (5,'Corolla',2022,4,4), (7,'Fit',2021,4,4),
(7,'Fit',2022,4,4), (8,'HB20',2021,4,4), (8,'HB20',2022,4,4);
select * from cadastro_veiculos;

-- sucesso!

insert into cadastro_pecas (nome_pec, cod_fabri_pec, especificacao_pec, original_pec, valor_pec)  values 
('Limpador Parabrisa',1, 'Silicone',1,30),
('Limpador Parabrisa',2, 'Silicone',1,30),
('Limpador Parabrisa',3, 'Silicone',1,30),
('Limpador Parabrisa',4, 'Silicone',1,30),
('Limpador Parabrisa',5, 'Silicone',1,30),
('Jogo de velas',1, 'Caixa c/ 4 unidades',1,120.9),
('Jogo de velas',2, 'Caixa c/ 4 unidades',1,320.9),
('Jogo de velas',3, 'Caixa c/ 4 unidades',1,340.9),
('Jogo de velas',4, 'Caixa c/ 4 unidades',1,90.9),
('Jogo de velas',5, 'Caixa c/ 4 unidades',1,187.9),
('Jogo de Amortecedores',1, 'Caixa c/ 4 unidades',1,678.3),
('Jogo de Amortecedores',2, 'Caixa c/ 4 unidades',1,918.6),
('Jogo de Amortecedores',3, 'Caixa c/ 4 unidades',1,775.8),
('Jogo de Amortecedores',4, 'Caixa c/ 4 unidades',1,691.3),
('Jogo de Amortecedores',5, 'Caixa c/ 4 unidades',1,800.3)
;
select * from cadastro_pecas;

-- sucesso!

insert into cadastro_especialidade (nome_esp) values ('Ajudante'),('Eletricista'),('Mecânico');
select * from cadastro_especialidade;

-- sucesso!


insert into cadastro_mecanicos (nome_mec,endereco_mec,cod_esp_mec) values
('Juarez Lima','Rua Luz Divina, 3 - Leblon',2),
('Lucas Silva','Rua Luzia do Mato, 143 - Olaria',3),
('Paulo Henrique Ganso','Rua do Banco, 56 - Bangu',2),
('Samuel Chavier','Rua do Canal, 100 - Braz de Pina',3),
('Luiz Souza','Rua do Encanador, 25 fundos - Centro',1),
('Claudio Vitorino','Estrada do Canal, 2034 - Estacio',1)
;
select * from cadastro_mecanicos;

-- sucesso!

insert into servicos (nome_serv, cod_esp_serv, valor_serv) values 
('Troca de Amortecedores',3,200),
('Troca de Velas',2,120),
('Troca de Limpadores',1,50)
; 
select * from servicos;

-- sucesso!

insert into cadastro_clientes (nome_cli, endereco_cli, telefone_cli, cod_vei_cli, placa_vei, cor_vei,ano_fabrica) values
('Bruno Cardoso','Rua da Flores, 10 - São João','99999-8888',5,'OSF1234','Amarela',2014),
('Gustavo de Moraes','Rua 12 de Fevereiro, 202 - Bangu','97999-8388',4,'AAF9034','Azul',2022),
('Aloísio Xavier','Rua dos Limadores, 100 - Jabour','90099-8811',1,'LFF5634','Preta',2010),
('MArilia Mendonça','Rua da Saudade, 22 - Sonhos','92299-9088',2,'ADE4444','Branca',2018),
('Leonardo Lima','Rua Leocadio, 334 - copacabana','99970-8870',3,'WER2233','Verde',2019)
;
select * from cadastro_clientes;

-- sucesso!

insert into orcamento (data_orc, cod_cli_orc, cod_vei_orc, cod_serv_orc, valor_serv_orc, cod_pec_orc, valor_pec_orc, valor_orc, aprov_orc) values 
('2022-09-17',3,1,2,120,7,320.90,440.90,0),
('2022-09-17',1,5,1,200,15,800.30,1000.30,1),
('2022-09-17',5,3,3,50,3,30,80,1);
select * from orcamento;

-- sucesso!

insert into cadastro_os (data_os, cod_cli_os, cod_vei_os, cod_serv_os, cod_pec_os, cod_orc_aprov, valor_aprov_orc, valor_os, valor_desconto_os) values
('2022-09-17',1,5,1,15,2,1000.30,1000.30,0),
('2022-09-17',5,3,3,3,3,80,70,10);
select * from cadastro_os;

-- sucesso!






