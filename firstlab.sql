create database DS;

-- creating table
create table t1(
	name varchar(255),
    id int,
    course varchar(255),
    city varchar(255),
    country varchar(255)
    );
    
-- rename table 
rename table t1 to table1;

-- modify table 
alter table t1 add age int;

-- inserting Data 
insert into table1 values ('Saurav', 2420840, 'Btech AIDS', 'Hamirpur', 'India', 18);
insert into table1 values ('Sanchit', 2420832, 'Btech AIDS', 'Hamirpur', 'India', 19);
insert into table1 values ('Mohit', 2420769, 'Btech AIDS', 'jammu', 'India', 40);
insert into table1 values ('Nidhi', 2420778, 'Btech AIDS', 'bla-bla', 'India', 20);

delete from table1 where name= 'Saurav';

truncate table table1;

select * from table1;
