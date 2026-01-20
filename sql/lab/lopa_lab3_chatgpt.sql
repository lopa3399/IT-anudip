Create database Office;
use Office;
CREATE TABLE EMP (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Department VARCHAR(50),Phone VARCHAR(15));
CREATE TABLE EmergencyContact (ContactID INT PRIMARY KEY,EmployeeID INT,ContactName VARCHAR(100),Relationship VARCHAR(50),ContactPhone VARCHAR(15),ContactAddress TEXT,FOREIGN KEY (EmployeeID) REFERENCES EMP(EmployeeID));
INSERT INTO EMP (EmployeeID, FirstName, LastName, Department, Phone) VALUES (1, 'Rahul', 'Sen', 'IT', '9876543210');
select * from EMP;
set SQL_SAFE_UPDATES=0;


INSERT INTO EMP (EmployeeID, FirstName, LastName, Department, Phone) VALUES (4, 'Soutrik', 'Som', 'Data Engineer', '9474158656');
INSERT INTO EMP (EmployeeID, FirstName, LastName, Department, Phone) VALUES (5, 'Didhiti', 'Das', 'Data Engineer', '9474158656');

INSERT INTO EMP (EmployeeID, FirstName, LastName, Department, Phone) VALUES (2, 'Rahul', 'Sinha', 'IT', '8972753990');
INSERT INTO EMP (EmployeeID, FirstName, LastName, Department, Phone) VALUES (3, 'Dipayan', 'Bose', 'Data Analyst', '8436290670');
INSERT INTO EmergencyContact (ContactID, EmployeeID, ContactName, Relationship, ContactPhone, ContactAddress) VALUES(1, 2, 'Sita Sen', 'Wife', '9876501234', 'Kolkata, West Bengal');
CREATE TABLE EMP1 (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Age VARCHAR(50),Email VARCHAR(15));
Select*from EMP1;
ALTER TABLE EMP1
DROP COLUMN Age;

INSERT INTO EMP1 (EmployeeID, FirstName, LastName, Age, email) VALUES (1, 'Rahul', 'Sen', 28, 'rahul.sen@example.com');
ALTER TABLE EMP1
RENAME COLUMN Phone TO Email;
ALTER TABLE EMP1
ADD Email varchar(50);
-- Task 1: Insert data into Employee table
INSERT INTO EMP1
(EmployeeID, FirstName, LastName, Email)
VALUES
(1, 'Rahul', 'Sen', 'rahul.sen@example.com', 28),
(2, 'Anita', 'Sharma','anita.sharma@example.com', 35),
(3, 'Sourav', 'Das','sourav.das@example.com', 42);
set SQL_SAFE_UPDATES=0;
select*from EMP1;
ALTER TABLE EMP1
ADD Age varchar(50);
INSERT INTO EMP1
(EmployeeID, FirstName, LastName, Email,Age)
VALUES
(1, 'Rahul', 'Sen', 'rahul.sen@example.com', 28),
(2, 'Anita', 'Sharma','anita.sharma@example.com', 35),
(3, 'Sourav', 'Das','sourav.das@example.com', 42);
SELECT FirstName, LastName FROM EMP1;
SELECT FirstName, LastName, Age
FROM EMP1
WHERE age > 30;
UPDATE EMP1
SET Age = age + 1
WHERE Age > 25;
UPDATE EMP1
SET salary = salary * 1.10
WHERE job_title = 'Manager';