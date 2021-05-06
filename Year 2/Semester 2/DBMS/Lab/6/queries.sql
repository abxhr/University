use 20190233db;

# Query 1
CREATE VIEW Q1 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman" FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id;
SELECT * FROM Q1;

# Query 2
CREATE VIEW Q2 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE b.commission > 0.12;
SELECT * FROM Q2;

# Query 3
CREATE VIEW Q3 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE a.city != b.city AND b.commission > 0.12;
SELECT * FROM Q3;

# Query 4
CREATE VIEW Q4 AS SELECT * FROM orders NATURAL JOIN customer NATURAL JOIN salesman;
SELECT * FROM Q4;

# Query 5
CREATE VIEW Q5 AS SELECT a.cust_name AS "Customer", b.name AS "Salesman" FROM customer a LEFT JOIN salesman b ON a.salesman_id = b.salesman_id ORDER BY a.customer_id;
SELECT * FROM Q5;

# Query 6
CREATE VIEW Q6 AS SELECT a.salesman_id as "SID 1", a.name, a.city as "Salesman city", a.commission, b.customer_id, b.cust_name, b.city as "Customer City", b.grade, b.salesman_id as "SID 2" FROM salesman a CROSS JOIN customer b;
SELECT * FROM Q6;

# Query 7
CREATE VIEW Q7 AS SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT OUTER JOIN prereq ON course.course_id = prereq.course_id;
SELECT * FROM Q7;

# Query 8
CREATE VIEW Q8 AS SELECT prereq.course_id, title, dept_name, credit, prereq_id FROM course RIGHT JOIN prereq on course.course_id = prereq.course_id;
SELECT * FROM Q8;

# Query 9
CREATE VIEW Q9 AS SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT JOIN prereq ON course.course_id = prereq.course_id union SELECT course.course_id, title, dept_name, credit, prereq_id FROM course RIGHT JOIN prereq ON course.course_id = prereq.course_id;
SELECT * FROM Q9;


# From tutorial 7

# Creating Tables
use 20190233db;

# Query 1
CREATE VIEW Q1 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman" FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id;
SELECT * FROM Q1;

# Query 2
CREATE VIEW Q2 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE b.commission > 0.12;
SELECT * FROM Q2;

# Query 3
CREATE VIEW Q3 AS SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE a.city != b.city AND b.commission > 0.12;
SELECT * FROM Q3;

# Query 4
CREATE VIEW Q4 AS SELECT * FROM orders NATURAL JOIN customer NATURAL JOIN salesman;
SELECT * FROM Q4;

# Query 5
CREATE VIEW Q5 AS SELECT a.cust_name AS "Customer", b.name AS "Salesman" FROM customer a LEFT JOIN salesman b ON a.salesman_id = b.salesman_id ORDER BY a.customer_id;
SELECT * FROM Q5;

# Query 6
CREATE VIEW Q6 AS SELECT a.salesman_id as "SID 1", a.name, a.city as "Salesman city", a.commission, b.customer_id, b.cust_name, b.city as "Customer City", b.grade, b.salesman_id as "SID 2" FROM salesman a CROSS JOIN customer b;
SELECT * FROM Q6;

# Query 7
CREATE VIEW Q7 AS SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT OUTER JOIN prereq ON course.course_id = prereq.course_id;
SELECT * FROM Q7;

# Query 8
CREATE VIEW Q8 AS SELECT prereq.course_id, title, dept_name, credit, prereq_id FROM course RIGHT JOIN prereq on course.course_id = prereq.course_id;
SELECT * FROM Q8;

# Query 9
CREATE VIEW Q9 AS SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT JOIN prereq ON course.course_id = prereq.course_id union SELECT course.course_id, title, dept_name, credit, prereq_id FROM course RIGHT JOIN prereq ON course.course_id = prereq.course_id;
SELECT * FROM Q9;


# From tutorial 7

# Creating Tables
create table employee
(fname varchar(10),
 minit varchar(5),
 lname varchar(10),
 ssn   int(11),
 bdate date,
 address varchar(30),
 sex char(2),
 salary int(6),
 super_ssn int(10),
 Dno    int(2),
 primary key(ssn));
 
 drop table employee;
 
 insert into employee values('John','B','Smith',123456789,'1965-01-09','731 Fondren,Houston,TX','M',30000,333445555,5);
 
 insert into employee values('Franklin','T','Wong',333445555,'1955-12-08','638 Vous,Houston,TX','M',40000,888665555,5);
 
 insert into employee values('Alicia','J','Zelaya',99887777,'1968-01-19','3321 Castle,Spring,TX','F',25000,987654321,4);
 insert into employee values('Jennifer','S','Wallace',987654321,'1941-06-20','291 Berry,Bellaire,TX','F',43000,888665555,4);


insert into employee values('Ramesh','K','Narayan',666884444,'1962-09-15','731 Fire Oak,Humble,TX','M',38000,333445555,5);
insert into employee values('Joyce','A','English',453453453,'1972-07-31','638 Rice,Houston,TX','F',25000,333445555,5);
insert into employee values('Ahamad','V','Jabbar',987987987,'1969-03-29','3321 Dallas,Houston,TX','M',25000,987654321,4);
insert into employee values('James','E','Borg',88665555,'1937-11-10','450 Stone,Houston,TX','M'55000,NULL,1);

create table project(pname char(50),pnumber float,plocation char(50), dnum float);
insert into project values('productx',1,'bellaire',5);
insert into project values('producty',2,'sugarland',5);
insert into project values('productz',3,'houston',5);
insert into project values('computerization',10,'stafford',4);
insert into project values('reorganization',20,'houston',1);
insert into project values('newbenefits',30,'stafford',4);

create table  dept_locations(dnumber char, dlocation char(50));
insert into dept_locations values(1,'houston');
insert into dept_locations values(4,'stafford');
insert into dept_locations values(5,'bellaire');
insert into dept_locations values(5,'sugarland');
insert into dept_locations values(5,'houston');

create table dependent(essn float, dependent_name char(50), sex char(50),bdate date, relation char(50));
insert into dependent values(3334455555,'alice','f','1980-04-05','daughter');
insert into dependent values(3334455555,'theodore','m','1983-10-25','son');
insert into dependent values(3334455555,'joy','f','1958-05-03','spouse');
insert into dependent values(987654321,'abner','m','1942-02-28','spouse');
insert into dependent values(123456789,'michael','m','1988-01-04','son');
insert into dependent values(123456789,'alice','f','1988-12-30','daughter');
insert into dependent values(123456789,'elizabeth','f','1967-05-05','spouse');

insert into Works_on values ( 123456789,1,32.5);
insert into Works_on values ( 123456789,2,7.5);
insert into Works_on values ( 666884444,3,40.0);
insert into Works_on values ( 453453453,1,20.0);
insert into Works_on values ( 453453453,2,20.0);
insert into Works_on values ( 333445555,2,10.0);
insert into Works_on values ( 333445555,3,10.0);
insert into Works_on values ( 333445555,10,10.0);
insert into Works_on values ( 333445555,20,10.0);
insert into Works_on values ( 999887777,30,30.0);
insert into Works_on values ( 999887777,10,10.0);
insert into Works_on values ( 987987987,10,35.0);
insert into Works_on values ( 987987987,30,5.0);
insert into Works_on values ( 987654321,30,20.0);
insert into Works_on values ( 987654321,20,15.0);
insert into Works_on values ( 888665555,20,NULL);

