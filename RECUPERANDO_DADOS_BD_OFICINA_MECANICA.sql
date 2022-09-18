-- RECUPERANDO OS DADOS

select * from cadastro_mecanicos;
select * from cadastro_especialidade;
select * from cadastro_pecas;
select * from cadastro_veiculos;
select * from cadastro_fabricantes;
select * from cadastro_os;
select * from orcamento;
select * from cadastro_clientes;

select * from  cadastro_clientes where ano_fabrica > 2015;

select cadastro_clientes.nome_cli,
       cadastro_veiculos.modelo,
       cadastro_veiculos.nr_portas,
       cadastro_clientes.placa_vei,
       cadastro_clientes.cor_vei,
       cadastro_clientes.ano_fabrica
       from cadastro_clientes
       join cadastro_veiculos on cadastro_veiculos.id_veiculo = cadastro_clientes.cod_vei_cli
where cadastro_clientes.ano_fabrica > 2010
order by cadastro_clientes.nome_cli;

select * from  cadastro_clientes order by 2;

select cadastro_pecas.id_pec,
       cadastro_pecas.nome_pec,
       cadastro_fabricantes.nome_fabri
       from cadastro_pecas
       join cadastro_fabricantes on cadastro_fabricantes.id_fabri = cadastro_pecas.cod_fabri_pec
       where cadastro_pecas.nome_pec like 'jogo%'
       group by cadastro_fabricantes.nome_fabri
;



