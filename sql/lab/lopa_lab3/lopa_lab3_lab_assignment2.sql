create database emp;
use emp;
create table Employee(
emp_id int primary key,
first_name varchar(20),
last_name varchar(20),
age int,
email varchar(50)
);
-- task 1
insert into Employee(emp_id,first_name,last_name,age,email) 
values
(1,"lopamudra","roy",29,"xyz@gmail.com"),
(2,"jhilik","roy",22,"xyz@gmail.com"),
(3,"aishi","roy",31,"xyz@gmail.com"),
(4,"payal","roy",34,"xyz@gmail.com"),
(5,"sudeshna","roy",26,"xyz@gmail.com")
;
-- task 2
select first_name,last_name from Employee;
-- task 3
select first_name,last_name from Employee where age>30;
-- task 4
update Employee
set age=age+1
where age>25;
select * from Employee;