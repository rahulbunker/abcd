create database samyak;
show databases;
use samyak;

create table students(
	id int ,
name varchar(30),
age int);


insert into students 
values (1,"rahul",22);

select * from students;

select id,name from students;

select * from studetns where age =22;

insert into students values (2,"amit",23),(5,"gopal",32);

select * from students where age =22;

select * from students where age>23;

select * from students where name = "rahul";

update students set age =100 where name ="rahuL";

select * from students;



delete from students where age =100;

select * from students order by age asc;

select distinct name from students;

use sakila;

show databases;

select * from customer;
select sum(store_id) from customer;

select first_name from customer where first_name like "R%";

select * from customer where customer_id between 10 and 15;

select count(*) from customer;

select * from customer where first_name in("nancy" , "lisa");

select distinct(first_name) from customer;

select count(first_name) from customer;

select * from customer;

select * from customer where store_id is not null;

create index index_name on customer(first_name);

show index from customer;

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(20),
    Salary INT
);

DROP INDEX index_name on customer;

INSERT INTO Employee VALUES
(1,'Rahul','IT',50000),
(2,'Amit','HR',40000),
(3,'Neha','IT',55000),
(4,'Priya','Sales',35000),
(5,'Rohit','HR',42000),
(6,'Ankit','IT',60000),
(7,'Pooja','Sales',37000),
(8,'Vikas','Finance',48000),
(9,'Simran','Finance',52000),
(10,'Mohit','IT',50000),
(11,'Karan','HR',41000),
(12,'Sneha','Sales',36000),
(13,'Deepak','Finance',47000),
(14,'Riya','IT',58000),
(15,'Arjun','HR',43000),
(16,'Nisha','Finance',51000),
(17,'Sahil','Sales',39000),
(18,'Payal','IT',62000),
(19,'Ajay','Finance',49000),
(20,'Meena','HR',44000),
(21,'Tarun','IT',53000),
(22,'Komal','Sales',38000),
(23,'Manish','Finance',50000),
(24,'Kavita','HR',45000),
(25,'Yash','IT',61000);

select * from Employee;

select * , row_number() over(order by salary desc) as row_no from Employee;

select * , rank() over(order by salary desc ) as rank_no from Employee;

select * , dense_rank() over(order by salary desc ) as rank_no from Employee;

select *, lead(salary) over(order by salary) as next_salary from Employee;

select *, lag(salary) over(order by salary) as next_salary from Employee;