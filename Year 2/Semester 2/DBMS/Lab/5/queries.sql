
# Query 1
SELECT a.cust_name AS "Customer Name", b.name AS "Salesman" FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id;

# Query 2
SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE b.commission > 0.12;

# Query 3
SELECT a.cust_name AS "Customer Name", b.name AS "Salesman", b.commission FROM customer a INNER JOIN salesman b ON a.salesman_id = b.salesman_id WHERE a.city != b.city AND b.commission > 0.12;

# Query 4
SELECT * FROM orders NATURAL JOIN customer NATURAL JOIN salesman;

# Query 5
SELECT a.cust_name AS "Customer", b.name AS "Salesman" FROM customer a LEFT JOIN salesman b ON a.salesman_id = b.salesman_id ORDER BY a.customer_id;

# Query 6
SELECT * FROM salesman a CROSS JOIN customer b;


# NEW TABLES
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE department;
DROP TABLE course;
DROP TABLE prereq;

CREATE TABLE course(course_id char(10), title char(20), dept_name char(20), credit int, PRIMARY KEY(course_id));
CREATE TABLE prereq(course_id char(10), prereq_id char(10), FOREIGN KEY(course_id) REFERENCES course(course_id));

INSERT INTO course VALUES("BIO-301", "Genetics", "Biology", 4);
INSERT INTO course VALUES("CS-190", "Game Design", "Comp. Sci.", 4);
INSERT INTO course VALUES("CS-315", "Robotics", "Comp. Sci.", 3);

INSERT INTO prereq VALUES("BIO-301", "BIO-101");
INSERT INTO prereq VALUES("CS-190", "CS-101");
INSERT INTO prereq VALUES("CS-347", "CS-101");

# Query 7
SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT OUTER JOIN prereq ON course.course_id = prereq.course_id;

# Query 8
SELECT prereq.course_id, title, dept_name, credit, prereq_id
FROM course RIGHT JOIN prereq on course.course_id = prereq.course_id;

# Query 9
SELECT course.course_id, title, dept_name, credit, prereq_id FROM course LEFT JOIN prereq ON course.course_id = prereq.course_id union SELECT course.course_id, title, dept_name, credit, prereq_id FROM course RIGHT JOIN prereq ON course.course_id = prereq.course_id;