create database company;
use company;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    bonus INT
);
select*from employees;
INSERT INTO employees
(employee_id, name, department, salary, bonus)
VALUES
(101, 'Rahul Sen', 'Sales', 55000, 5000),
(102, 'Anita Sharma', 'HR', 40000, 3000),
(103, 'Sourav Das', 'Sales', 62000, 6000),
(104, 'Neha Roy', 'IT', 48000, 4000),
(105, 'Amit Kumar', 'Sales', 45000, 3500);
SELECT account_holder_name, account_balance
FROM BankAccount;
SELECT account_holder_name, account_balance
FROM BankAccount
WHERE account_balance > 30000;
UPDATE BankAccount
SET account_balance = 50000
WHERE account_id = 101;
SELECT *
FROM employees
WHERE department = 'Sales'
  AND salary > 50000;
  DELETE FROM employees
WHERE employee_id = 105;
DELETE FROM orders
WHERE order_date < '2022-01-01'
  AND status = 'Pending';
  DELETE FROM products
WHERE category = 'Discontinued';
UPDATE employees
SET bonus = bonus + 1000
WHERE department = 'Sales';
set SQL_SAFE_UPDATES=0;
