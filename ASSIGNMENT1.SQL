/*create table subject (id,subj_name (unique))*/

create table subject(
	ID varchar(10) Primary key,
	subj_name varchar(20) UNIQUE
);

/*create table students(id(pk), std_name, std_lastname,subj_id(fk),
marks,age(check in 18 above),email(unique))*/

CREATE TABLE students(
	ID int PRIMARY KEY,
	STD_NAME VARCHAR(20),
	STD_LASTNAME VARCHAR(20),
	SUBJECT_ID varchar(10),
	FOREIGN KEY(SUBJECT_ID) REFERENCES subject(ID),
	MARKS INT NOT NULL,
	AGE INT NOT NULL,
	CHECK (AGE>18),
	EMAIL VARCHAR(50) UNIQUE	
);

SELECT * FROM students;

/* 1] insert data both tables*/

INSERT INTO subject(ID,subj_name)
values('s1','maths'),('s2','english'),('s3','hindi'),('s4','evs'),('s5','gk'),('s6','computer');

SELECT * FROM subject;

insert into students(id,std_name,std_lastname,subject_id,marks,age,email)
values(1,'arnav','yadav','s1',85,20,'arnav@gmail.com'),
(2,'mohit','gupta','s5',92,21,'mohit@gmail.com'),
(3,'RAJ','sharma','s4',95,22,'raj@yahoo.com'),
(4,'ravi','verma','s6',98,21,'ravi@gmail.com'),
(5,'neeraj','goyal','s2',85,22,'neeraj@gmail.com'),
(6,'kritika','sharma','s3',91,21,'kritika@gmail.com'),
(7,'YUKTI','ARORA','s4',90,20,'yukti////2gmail.com'),
(8,'kavya','nanda','s1',85,21,'kavya@gmail.com');

/*correction of wrong entry*/

update students
set email='yukti@gmail.com'
where id=7;

select * from students;

/* 2]Write a query to shows all the rows of those Students whose age is 20 ?*/

select * from students
where age=20;

/*3] Write a query shows the Subject_Name of those subjects whose Subject_ID is s1 and s2 */

select * from subject
where ID='s1' or ID='s2';

/*4]Write a  query shows the maximum and minimum marks of 
the marks column from the Students table ?*/

SELECT MAX(MARKS) AS max_marks from students;

SELECT MIN(MARKS) AS min_marks from students;

/*5] Write a query to access the first record from the students table?*/

select * from students limit 1;

/*6]  Write an SQL query to fetch the Std_name and marks 
of those students whose age is 20 */

select std_name,marks from students
where age=20;

/*7]  Write a query to show all the record of those students 
whose Marks is greater than 90 and age is 21*/

select * from students
where marks>90 and age=21;

/*8] Write a query to show the record of those students whose
name begins with the 's' character.*/

/*inserting new records for checking*/

insert into students(id,std_name,std_lastname,subject_id,marks,age,email)
values(9,'savita','sharma','s6',89,22,'savita@gmail.com'),
(10,'SAGAR','dahiya','s2',95,21,'sagar@gmail.com');

select * from students
where substring(std_name,1,1)='s';

/*9]Write a query in SQL to fetch the values of the Std_name 
column from the Students table in the upper case.*/

select UPPER(STD_NAME) AS Students_name_in_upper_case FROM students;

/*10]Write an SQL query to show the unique values of age  from the student table*/

SELECT DISTINCT AGE FROM students;

/*11]Write a Query  to show the first N characters of the string column from the Student table
*/

select STD_NAME,substring(STD_NAME,1,3) AS first_3_chars_of_name from students;

/*12] Write a query to view all student details from the Student table order by name Descending.*/

select STD_NAME FROM students
ORDER BY STD_NAME DESC;

/*12] Write a query to view all student details from the Student table order by name Ascending.
*/

select STD_NAME FROM students
ORDER BY STD_NAME ASC;

/*13] Write a Query to add another column in the subject table */

ALTER TABLE subject
ADD COLUMN TEACHER VARCHAR(20);

SELECT * FROM subject;

/*14] Write a query to fetch name from the student table using the alias name <first_name>*/

select std_name as first_name
from students;


/*15]Write a query to print the first three characters of subj_name from the subject table*/

SELECT subj_name,SUBSTRING(subj_name,1,3) as First_3_chars_of_subject
from subject;

/*16]Write a query to print the subj_name from the subject table after replacing ‘e’ with ‘E’*/

select replace(subj_name,'e','E')
from subject;


/*17] Write a SQL query to print the std_name and std_lastname from 
the student  table into a single column COMPLETE_NAME. A space char should separate them.*/

SELECT concat(std_name,' ',std_lastname) as COMPLETE_NAME
from students;



