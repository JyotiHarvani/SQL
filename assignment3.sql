select * from employee;

/*Write query to count the number of rows in emp table..?*/

select count(*) as "Number of records" from employee;

/*Write query to find the max salary from emp table..?*/

select max(salary) as "Maximum Salary" from employee;

/*Write query to return null values from emp table*/

insert into employee(emp_id,f_name,l_name,salary,department,gender)
values(12,'ritu','sharma',35000,'sales','F'),
(13,'raman','verma',25000,'marketing','M');

select * from employee
where joiningdate is null;

/*Write a SQL query to group empname and calculate aggregate function*/

select department,count(f_name) as "Total number of employees in the dept"
from employee
group by department
order by count(f_name) asc;


select department,sum(salary) as "Total salary of employees" from employee
group by department
order by sum(salary) asc;

select department,max(salary) from employee
group by department;


select department,min(salary) from employee
group by department;
 
 
select department,round(avg(salary),2) as "Average salary of employees" from employee
group by department
order by avg(salary);

/*Write a query to get third maximum salary from emp table*/

select emp_id,f_name,salary from employee
order by salary desc
limit 1 offset 2;

/*Difference between = and in operators*/

select * from employee
where department='sales';

select * from employee
where department in ('sales','research');

/*Write the query to combine the 'Name' column in the 'teachers' table with the 'Name' 
column in the 'students' table using the UNION operator.*/

select name from teacher
union
select std_name from students;


select name from teacher
union all
select std_name from students;

/*Write a query to dlt all rows from table but keeps the table structure*/

create table test
( name varchar(10),
 age int,
 school varchar(20)
)

insert into test(name,age,school)
values('ravi',15,'DPS'),
('ram',12,'RPS');

select * from test;

truncate table test;

select * from test;

insert into test(name,age,school)
values('ravi',15,'DPS'),
('ram',12,'RPS');

select * from test;

delete from test;









 
 






