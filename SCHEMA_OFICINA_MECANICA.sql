create schema oficina_dio;

use oficina_dio;

create table cadastro_fabricantes (

id_fabri int not null auto_increment primary key,
nome_fabri varchar(45)

);

-- sucesso!


create table cadastro_veiculos (

id_veiculo int not null auto_increment primary key,
cod_fabri_vei int not null,
modelo varchar(45) not null,
ano_faricacao int not null,
nr_portas int not null,
nr_eixos int not null default 4,
constraint fk_fabricante_veiculo foreign key (cod_fabri_vei) references cadastro_fabricantes(id_fabri) 

);

-- sucesso!


create table cadastro_pecas (

id_pec int not null auto_increment primary key,
nome_pec varchar(45) not null,
cod_fabri_pec int not null,
especificacao_pec varchar(45),
original_pec boolean,
valor_pec float default 0,
constraint fk_fabricante_pecas foreign key (cod_fabri_pec) references cadastro_fabricantes(id_fabri) 

);

-- suceesso!

create table cadastro_especialidade (

id_esp int not null auto_increment primary key,
nome_esp varchar(45)

);

-- sucesso!


create table cadastro_mecanicos (

id_mec int not null auto_increment primary key,
nome_mec varchar(100) not null,
endereco_mec varchar (100) not null,
cod_esp_mec int not null,
constraint fk_especialidade_mecanico foreign key (cod_esp_mec) references cadastro_especialidade(id_esp)

);

-- sucesso!


create table servicos(

id_serv int not null auto_increment primary key,
nome_serv varchar(45),
cod_esp_serv int not null,
valor_serv float,
constraint fk_especialidade_servico foreign key (cod_esp_serv) references cadastro_especialidade(id_esp)

);

-- sucesso!


create table cadastro_clientes (

id_cli int not null auto_increment primary key,
nome_cli varchar(100) not null,
endereco_cli varchar(100) not null,
telefone_cli varchar(45) not null,
cod_vei_cli int not null,
placa_vei varchar(45) not null,
cor_vei varchar(45) not null,
ano_fabrica int not null,
constraint fk_veiculo_cliente foreign key (cod_vei_cli) references cadastro_veiculos(id_veiculo)

);

-- sucesso!


create table orcamento ( 

id_orc int not null auto_increment primary key,
data_orc date not null,
cod_cli_orc int not null,
cod_vei_orc int not null,
cod_serv_orc int null,
valor_serv_orc float not null,
cod_pec_orc int null,
valor_pec_orc float not null,
valor_orc float,
aprov_orc boolean,
constraint fk_orcamento_cliente foreign key (cod_cli_orc) references cadastro_clientes(id_cli),
constraint fk_orcamento_veiculo foreign key (cod_vei_orc) references cadastro_clientes(cod_vei_cli),
constraint fk_orcamento_servico foreign key (cod_serv_orc) references servicos(id_serv),
constraint fk_orcamento_pecas foreign key (cod_pec_orc) references cadastro_pecas(id_pec)

);

-- sucesso!


create table cadastro_os (

id_os int not null auto_increment primary key,
data_os date not null,
cod_cli_os int not null,
cod_vei_os int not null,
cod_serv_os int not null,
cod_pec_os int not null,
cod_orc_aprov int not null,
valor_aprov_orc float not null,
valor_os float not null,
valor_desconto_os float,
constraint fk_os_cliente foreign key (cod_cli_os) references orcamento(cod_cli_orc),
constraint fk_os_veiculo foreign key (cod_vei_os) references orcamento(cod_vei_orc),
constraint fk_os_servico foreign key (cod_serv_os) references orcamento(cod_serv_orc),
constraint fk_os_pecas foreign key (cod_pec_os) references orcamento(cod_pec_orc),
constraint fk_os_orcamento_aprovado foreign key (cod_orc_aprov) references orcamento(id_orc)
on delete cascade
on update cascade

);

-- sucesso!


-- TODOS OS SCRIPTS RODARAM COM SUCESSO!!!
-- ADE SILVA 17/09/2022

