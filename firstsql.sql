-- 1. Create the Database (The "Container")
CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

-- 2. Create the Table (The "Structure")
-- We use 'IF NOT EXISTS' so it doesn't error out if you run it twice.
CREATE TABLE IF NOT EXISTS Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Course VARCHAR(20),
    City VARCHAR(30) DEFAULT 'Punjab'
);

-- 3. Insert Sample Data (The "Content")
-- Note: IGNORE prevents errors if the RollNo already exists in your table.
INSERT IGNORE INTO Students (RollNo, Name, Age, Course, City) VALUES 
(101, 'Saurav', 20, 'Java', 'Panthyani'),
(102, 'Sanchit', 21, 'DBMS', 'Bandous'),
(103, 'Satyam', 19, 'Python', 'Kurali');

-- 4. Final View
-- This shows your professor the final result of your work.
SELECT * FROM Students