use db1;
-- dual -----------
select sysdate() from dual;
select 10 + 5 from dual;
select "Hello World" from dual;


-- type conversions ----

-- int to char--
select cast(1234 as char);

-- char to int
select cast('123' as signed); -- Use UNSIGNED for positive-only numbers
select cast('123' as unsigned); -- will give same output
select cast('-123' as unsigned); -- will give random value
select cast('-123' as signed); -- will give same output 


