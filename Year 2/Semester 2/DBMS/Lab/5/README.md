# Lab 5 - Joins

- Write a SQL statement to know which salesman are working for which customer.

- Write a SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%. 

- Write a SQL statement to find the list of customers who appointed a salesman for their jobs who does not live in the same city where their customer lives, and gets a commission is above 12%. 

- Write a SQL statement to make a join on the tables salesman, customer and orders in such a form that the same column of each table will appear once and only the relational rows will come. 

- Write a SQL statement to make a list in ascending order for the customer who works either through a salesman or by own. 

- Write a SQL statement to make a cartesian product between salesman and customer i.e. each salesman will appear for all customer and vice versa.        

- Tables:
    - Course: course_id char(10), title char(20), dept_name char(20), credit int, PRIMARY KEY(course_id)
    - Prereq: course_id char(10), prereq_id char(10), FOREIGN KEY(course_id) REFERENCES course(course_id)
        - Perform left outer join
        - Perform right outer join 
        - Perform full outer join 

## Answer
Check [`queries.sql`](queries.sql)