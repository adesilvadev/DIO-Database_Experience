-- QUERYES

select * from clients;
select * from supplier;

select * from clients where fname like '%Carlos%';

select * from seller
left join supplier on supplier.cnpj = seller.cnpj
where location like 'Rua%'
group by location having count(*) >= 3;

-- ALGUM VENEDOR, TAMBÉM É FORNECEDOR?

select * from seller
left join supplier on supplier.cnpj = seller.cnpj
order by seller.socialname;

-- RELAÇÃO DE FORNCEDORES E ESTOQUES;

select * from supplier; 
select * from storageLocation ;


-- RELAÇÃO DE FORNECEDORES E NOMES DE PRODUTOS;

select supplier.socialname, product.idproduct codigo, product.pname produto, product.categoria from product
left join supplier on supplier.idsupplier = product.supplierId
order by 1;





