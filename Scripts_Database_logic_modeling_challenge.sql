/*
Recuperações simples com SELECT Statement; ok
Filtros com WHERE Statement; ok
Crie expressões para gerar atributos derivados;
Defina ordenações dos dados com ORDER BY;
Condições de filtros aos grupos – HAVING Statement;
Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;*/
-- Recuperações simples com SELECT Statement
Select * from Clients;
-- Filtros com WHERE Statement
Select * from Clients
where Cname = 'Maria M Silva';
-- Crie expressões para gerar atributos derivados
select *, (Estimate*0.9) as Valor_desconto from analysis;
-- Defina ordenações dos dados com ORDER BY;
select * from orders order by DateOrders;
-- condições de filtros aos grupos – HAVING Statement;
select * from analysis inner join labor on Labor_idLABOR = idLabor
having SpecialistType = "eletrico";

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select * from orders inner join ordersNumber 
on idorders = orders_idorders inner join analysis as a 
on idorders = a.orders_idorders
