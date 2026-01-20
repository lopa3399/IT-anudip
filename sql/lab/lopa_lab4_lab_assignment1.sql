create database bank;
use bank;
create table BankAccount(
account_id int primary key,
account_holder_name varchar(20),
account_balance float
);
-- task 1
-- Task 1: Insert sample bank accounts
INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
VALUES
(101, 'John Doe', 1500.50),
(102, 'Jane Smith', 3200.75),
(103, 'Alex Brown', 2750.00),
(104, 'Emily Davis', 4100.25),
(105, 'Michael Wilson', 500.00);
-- task 2

SELECT account_holder_name, account_balance
FROM BankAccount;
-- Task 3
SELECT account_holder_name, account_balance
FROM BankAccount
WHERE account_balance > 30000;
-- Task 4
UPDATE BankAccount
SET account_balance = 5000.00
WHERE account_id = 101;
 select * from BankAccount;
