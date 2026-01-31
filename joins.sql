CREATE DATABASE Class;
Use Class;
CREATE TABLE Students_data
(
Rollno int primary key,
Name varchar(50),
Stream varchar(20)
);

CREATE TABLE Account_data
(
s_id int primary key,
Stream varchar(20),
FeesStatus Varchar(20)
);

INSERT INTO Students_data VALUES
(840,'Saurav Thakur','AIDS'),
(818,'Rinkle Kaur','AIML'),
(832,'Sanchit Kaur','AIDS'),
(769,'Mohit Singh','AIML'),
(778,'Nadhii','AIDS')
;

INSERT INTO Account_data VALUES
(840,'AIDS','Paid'),
(818,'AIML','Pending'),
(832,'AIDS','Paid'),
(769,'AIML','Pending'),
(778,'AIDS','Paid')
;

SELECT *
FROM Students_data
INNER JOIN Account_data on 
Students_data.Rollno = Account_data.S_id;

-- natural join--
SELECT *
FROM Students_data
NATURAL JOIN Account_data;

-- left join--
SELECT *
FROM students_data
LEFT JOIN Account_data on
Students_data.Rollno=Account_data.S_id;

-- right join--
SELECT *
FROM students_data
RIGHT JOIN Account_data on
Students_data.Rollno=Account_data.S_id;

-- self join--
-- self join = table join with itself--
-- aliases are mandatory--
-- comparison within same table--
-- works with inner , left , right join--	`


-- get each employee with their manager name--
-- if you only want employee who have manager--
-- find the employee who shares same manager--
CREATE table Employee(
EmpId INT PRIMARY KEY,
Ename VARCHAR(20),
Manager_id INT 
);


INSERT INTO Employee
VALUES
(1, 'ABC',NULL),
(2,'XYZ',1),
(3,'Ram',1),
(4,'Mohan',2)
;


SELECT * FROM
Employee as E1
JOIN Employee as E2
ON E1.EmpId= E2.Manager_id;

-- GET EACH EMPLOYEE WITH THEIR MANAGER NAME 
SELECT 
    e.Ename AS Employee_Name,
    m.Ename AS Manager_Name
FROM Employee e
LEFT JOIN Employee m
ON e.Manager_id = m.EmpId;


-- If you only want employees who have managers
SELECT 
    e.Ename AS Employee_Name,
    m.Ename AS Manager_Name
FROM Employee e
INNER JOIN Employee m
ON e.Manager_id = m.EmpId;


-- Find the employee who share same manager  
SELECT 
    e1.Ename AS Employee1,
    e2.Ename AS Employee2,
    e1.Manager_id
FROM Employee e1
JOIN Employee e2
ON e1.Manager_id = e2.Manager_id
AND e1.EmpId <> e2.EmpId;