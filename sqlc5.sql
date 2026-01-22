create table db.Payment(
	CustomerId int Not Null,
	ProductId int not null,
    amount decimal(10,2) not null, 
    orderid int primary key,
    unique(CustomerId, ProductId)
);

select * from db.Payment;

insert into db.Payment(CustomerId, ProductId, amount, orderId) values
(1, 101, 1001, 250.00),
(2, 102, 1002, 300.50),
(3, 103, 1003, 150.75),
(4, 104, 1001, 400.00),
(5, 105, 1002, 500.25),
(6, 106, 1003, 100.00),
(7, 107, 1004, 350.40);

select * from db.Payment;

alter table db.Payment add column Annual_cost decimal(12,2);
select * from db.Payment;

update db.Payment 
set Annual_cost= 12*amount;

select * from db.Payment;

CREATE TABLE db.Order_Table AS
select ProductId, orderid
from db.Payment;

select * from db.Order_Table;
