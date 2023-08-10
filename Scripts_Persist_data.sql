use Mechanic_Co;

show tables;
-- Tabela Clientes
insert into Clients (CName, CPF, Address) 
	   values('Maria M Silva',12345678901, 'rua silva de prata 29, Carangola - Cidade das flores'),
		     ('Matheus O Pimentel',45678901234,'rua alemeda 289, Centro - Cidade das flores'),
			 ('Ricardo F Silva',78901234567,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
			 ('Julia S França','90123456789', 'rua lareijras 861, Centro - Cidade das flores'),
			 ('Roberta G Assis',89012345678,'avenidade koller 19, Centro - Cidade das flores'),
			 ('Isabela M Cruz',01234567890,'rua alemeda das flores 28, Centro - Cidade das flores');
             
-- Tabela Veiculo
insert into vehicle (VehicleType, clients_idclients) 
	   values('Carro',1),
		     ('Carro',2),
			 ('Caminhão',3),
			 ('Carro',4),
			 ('Caminhão',5),
			 ('Caminhão',6);
-- Tabela Pedido
insert into orders (ServiceType, Descriptions,DateOrders,clients_idclients) 
	   values('Conserto','Carro nao liga mais','2023-08-01',1),
		     ('Manutenção','Troca das pastilhas de freio','2023-07-30',2),
			 ('Conserto','Farou queimou','2023-08-02',3),
			 ('Manutenção','troca da correia','2023-08-03',4),
			 ('Conserto','retifica do motor','2023-08-05',5),
			 ('Manutenção','Suspenção','2023-08-06',6);
-- Tabela Ordem de Serviço
insert into OrdersNumber (StatusOrderNumber, orders_idorders) 
	   values('Concluido',1),
		     ('Concluido',2),
			 ('Em analise',3),
			 ('Em analise',4),
			 ('Recebido',5),
			 ('Recebido',6);
             
-- Tabela Análise
 insert into Analysis(Orders_idOrders, Labor_idLABOR,Store_idStore,DataAnalysis,Descriptions,Estimate) 
	   values(1,2,2,'2023-08-08','trocar cabos do painel',220.00),
		     (2,1,1,'2023-08-08','trocar as partilhas de freio',150.00),
			 (3,2,2,null,null,null),
			 (4,1,1,null,null,null),
			 (5,1,1,null,null,null),
			 (6,1,1,null,null,null);   
             
-- Tabela Mão de Obra 
insert into Labor (MNome,Address,SpecialistType,TimeValueHour) 
	   values('Arnaldo Silva','rua 123, Carangola - Cidade das flores','Mecanico',35.00),
		     ('Marco O Pimentel','rua a, Centro - Cidade das flores','Eletrico',35.00),
			 ('Falco S França','rua 234, Centro - Cidade das flores','Ar condicionado',30.00),
			 ('Bruno G Assis','avenidade 1099, Centro - Cidade das flores','Estetica',30.00);
             
-- Tabela Estoque
insert into Store (Autoparts,Costs) 
	   values('Peças mecanicas',150.00),
		     ('Componentes Eletricos',135.00),
			 ('Peças do Ar condicionado',130.00),
			 ('Componentes Esteticos',230.00);
             

