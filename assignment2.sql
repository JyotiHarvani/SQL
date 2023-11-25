create table employee(
	emp_id int PRIMARY KEY,
	f_name VARCHAR(20),
	l_name VARCHAR(20),
	salary INT NOT NULL,
	joiningDate varchar(30),
	department VARCHAR(20),
	gender CHAR
);

INSERT INTO employee(emp_id,f_name,l_name,salary,joiningDate,department,gender)
values(1,'ravi','verma',20000,'01-01-2023','marketing','M'),
(2,'sohan','sharma',40000,'02-01-2023','sales','M'),
(3,'mayank','saxena',25000,'03-01-2023','research','M'),
(4,'sumitra','goyal',30000,'02-11-2023','accounts','F'),
(5,'preeti','arora',35000,'05-05-2023','HR','F'),
(6,'suhana','khan',50000,'06-05-2023','marketing','F'),
(7,'vijay','verma',42000,'04-05-2023','sales','M'),
(8,'vivek','mittal',30000,'07-08-2023','research','M'),
(9,'ravina','ganguli',32000,'01-01-2023','marketing','F');

/*1] write query to get all Employee*/

select * from employee;

/*2] write query to get emp_id and f_name from  Employee table*/

select emp_id,f_name from employee;

/* 3] write query to get whose id =3 from Employee table*/

select * from employee
where emp_id=3;

/*4]  write query get all Employee  from Employee table whose f_name starts with 'm'*/

select * from employee
where substring(f_name,1,1)='m';

/*another way to solve this query*/

select * from employee
where f_name like 'm%';

/*5]  write query get all Employee  from Employee table whose f_name ends with 'i'*/

select * from employee
where right(f_name,1)='i';

/*6]get all employee  from employee table whose 'f_name' starts with  any single
character between 'a-s'*/

select * from employee
where f_name similar to '[a-s]%';

/*7]get all employee  from employee table whose 'f_name' does not start with  any 
single character between 'a-s'*/

select * from employee
where f_name not similar to '[a-s]%';

select * from employee
where f_name similar to '[t-z]%';

/*8]get all employee  from employee table whose 'f_name' starts with  A and contains 3 letters*/

insert into employee
values(10,'ani','mittal',40000,'09-08-2023','research','F'),
(11,'ajay','ganguli',31000,'20-01-2023','marketing','M');

select * from employee
where f_name like 'a__';

/*9] get all unique department from employee table*/

select Distinct department from employee;

/*10]get lowest salary from employee table*/

select min(salary) as minimum_salary from employee;

/*11]write query get how many employee exist in employee table */

select count(*) as total_no_of_employees
from employee;

/*12]write query to get  f_name 'preeti','ajay'.*/

select * from employee
where f_name in('preeti','ajay');





