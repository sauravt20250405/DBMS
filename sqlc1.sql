create database db1;

show databases;
use db1;

create table st1(
	Rollno integer,
    stname varchar(255)
    );

describe table st1;
select * from st1;
drop table st1;


create table db1.info(
	sname varchar(255),
    stream varchar(255),
    rollno int
    );
-- [ ]  means optional     
select *from Sakila.Actor;

select *from db1.info;
select sysdate() from dual;

-- dual ko padhna hai 
-- type conversions ani chahiye int to char, char to int 

create table as1(
    id int PRIMARY KEY, 
    name varchar(255),
    create_date datetime default current_timestamp
);

insert into as1 values(2420840, "Saurav Thakur", default, "Btech");
insert into as1 values(2420832, "Sanchit Thakur", default);
insert into as1 values(2420818, "Rinkle", default);
insert into as1 values(2420769, "mohit", default);
insert into as1 values(2420778, "nidhi", default);
-- update as1 set name where rollno = 2420840 to 
select *from as1;

show databases;
use sakila;
select *from db1.as1;
select *from db1.info;
select *from collegedb.students;
select *from collegedb.t1;
select *from collegedb.table1;
select *from sakila.actor;
select *from sakila.address;
select *from sakila.film;
select *from world.country;
select *from world.city;

alter table db1.as1 add str varchar(255);
alter table db1.as1 drop str;

truncate table as1;

-- select distinct rental_details
-- from address
-- where rental_duration = "3"


