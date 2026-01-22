create database db;
drop database db;

create table db.employees(
	name varchar(255),
    id varchar(255),
    designation varchar(255),
    time_period int,
    salary int,
    contact int,
    address varchar(255),
    city varchar(255),
    country varchar(255)
);
    
insert into db.employees values ('Saurav Thakur', "2420AST840", 'ML Engineer', 4, 250000, 628250, 'H23/4 old road','Chandigarh' ,'India');
insert into db.employees values ('Sanchit Thakur', "2420GST832", 'AI Engineer', 2, 268000, 247850, 'n441/4 GB road','Delhi' ,'India');
insert into db.employees values ('Mohit Kumar Rana', "AAC00769", 'CEO', 12, 1200000, 520384, '5A Lok Kalyan marg','Delhi' ,'India');
insert into db.employees values ('Rinklepreet Kaur', "2420RPK818", 'Peon', 1, 15000, 154632, '3B2 Mohali','SAS Nagar' ,'India');
insert into db.employees values ('Nidhi Sharma', "2420NSA778", 'Waiter', 1, 18000, 524803, 'Kali road Jhuggi','Chapra' ,'India');

select * from db.employees;
describe table db.employees;