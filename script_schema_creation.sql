-- criando o banco de dados
create database Mechanic_Co;
use Mechanic_Co;

-- Criando as Tabelas
-- Tabela Clientes
Create table Clients (
	idClients int not null auto_increment,
    CName Varchar(80),
    CPF CHAR(11),
    Address varchar(255),
    Constraint idClients_pk primary key(idClients)
    );
-- Tabela Veiculo
Create table vehicle (
	idvehicle int not null auto_increment,
    VehicleType Varchar(80),
    clients_idclients int,
    Constraint idvehicle_pk primary key(idvehicle),
    Constraint vehicle_idClients_fk foreign key(clients_idclients) references Clients(idClients)
    );
-- Tabela Pedido
Create table Orders (
	idOrders int not null auto_increment,
    ServiceType ENUM('Conserto','Manutenção'),
    Descriptions varchar(200),
    DateOrders Date,
    clients_idclients int,
    Constraint idOrders_pk primary key(idOrders),
    Constraint Orders_idClients_fk foreign key(clients_idclients) references Clients(idClients)
    );
-- Tabela Ordem de Serviço
Create table OrdersNumber (
	idOrdersNumber int not null auto_increment,
    StatusOrderNumber ENUM('Recebido','Em analise','Concluido'),
    orders_idorders int,
    Constraint idOrdersNumber_pk primary key(idOrdersNumber),
    Constraint OrdersNumber_idorders_fk foreign key(orders_idorders) references Orders(idOrders)
    );
-- Tabela Análise
Create table Analysis (
	Orders_idOrders int,
    Labor_idLABOR int,
    Store_idStore int,
    DataAnalysis date,
    Descriptions varchar(255),
    Estimate float,
    Constraint AnalysisOrders_idOrders_fk foreign key(Orders_idOrders) references Orders(idOrders),
    Constraint AnalysisLabor_idLABOR_fk foreign key(Labor_idLABOR) references Labor(idLABOR),
    Constraint AnalysisStore_idStore_fk foreign key(Store_idStore) references Store(idStore)
    );
-- Tabela Mão de Obra 
Create table Labor (
	idLABOR int not null auto_increment,
    MNome varchar(80),
    Address varchar(255),
    SpecialistType enum('Mecanico','Eletrico','Ar condicionado','Estetica'),
    TimeValueHour float,
    AnalysisOrders_idOrders int,
    Constraint idLABOR_pk primary key(idLABOR)
    );
-- Tabela Estoque
Create table Store (
	idStore int not null auto_increment,
    Autoparts varchar(80),
    Costs float,
    Constraint idStore_pk primary key(idStore)
    );