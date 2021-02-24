create table salesman(salesman_id int, name char(50), city char(25), commission decimal(3,2), primary key (salesman_id));
create table customer(customer_id int, cuts_name char(50), city char(25), grade int, salesman_id int, primary key(customer_id), foreign key(salesman_id) references salesman(salesman_id));
create table orders(ord_no int, purch_amt decimal(8,2), ord_date date, customer_id int, salesman_id int, primary key(ord_no), foreign key(customer_id) references customer(customer_id), foreign key(salesman_id) references salesman(salesman_id));

insert into salesman values(5001, "James Hoog", "New York", 0.15);
insert into salesman values(5002, "Nail Knite", "Paris", 0.13);
insert into salesman values(5005, "Pit Alex", "London", 0.11);
insert into salesman values(5006, "Mc Lyon", "Paris", 0.14);
insert into salesman(salesman_id,name,commission)  values(5003, "Lauson Hen", 0.12);
insert into salesman values(5007, "Paul Adam", "Rome", 0.13);
select * from salesman;

insert into customer values(3002, "Nick Rimando", "New York", 100, 5001);
insert into customer values(3005, "Graham Zuzi", "California", 200, 5002);
insert into customer values(3001, "Brad Guzan", "London", NULL, 5005);
insert into customer values(3004, "Fabian Johns", "Paris", 300, 5006);
insert into customer values(3007, "Brad Davis", "New York", 200, 5001);
insert into customer values(3009, "Geoff Camero", "Berlin", 100, 5003);
insert into customer values(3008, "Julian Green", "London", 300, 5002);
insert into customer values(3003, "Jozy Altidor", "Moscow", 200, 5007);
select * from customer;

insert into orders values(70001, 150.5, "2012-10-05", 3005, 5002);
insert into orders values(70009, 270.65, "2012-09-10", 3001, 5005);
insert into orders values(70002, 65.26, "2012-10-05", 3002, 5001);
insert into orders values(70004, 110.5, "2012-08-17", 3009, 5003);
insert into orders values(70007, 948.5, "2012-09-10", 3005, 5002);
insert into orders values(70005, 2400.6, "2012-07-27", 3007, 5001);
insert into orders values(70008, 5760, "2012-09-10", 3002, 5001);
insert into orders values(70010, 1983.43, "2012-10-10", 3004, 5006);
insert into orders values(70003, 2480.4, "2012-10-10", 3009, 5003);
insert into orders values(70012, 250.45, "2012-06-27", 3008, 5002);
insert into orders values(70011, 75.29, "2012-08-17", 3003, 5007);
insert into orders values(70013, 3045.6, "2012-04-25", 3002, 5001);
select * from orders;

alter table customer change column cuts_name cust_name char(50);


# Query 1
SELECT * FROM salesman WHERE city IN (SELECT city FROM customer);

# Query 2
SELECT * FROM orders WHERE purch_amt > ANY (SELECT purch_amt FROM orders WHERE ord_date = "2012-09-10");

# Query 3
SELECT * FROM orders WHERE purch_amt < ANY (SELECT purch_amt FROM orders o, customer c WHERE o.customer_id = c.customer_id AND c.city="London");

# Query 4
SELECT * FROM customer WHERE grade > ALL (SELECT grade FROM customer WHERE city = "New York");

# Query 5
SELECT * FROM customer WHERE grade NOT IN (SELECT grade FROM customer WHERE NOT grade IS NULL AND city="London");

# Query 6
SELECT * FROM orders WHERE salesman_id=(SELECT salesman_id FROM salesman WHERE name="Paul Adam");

# Query 7
SELECT * FROM orders WHERE salesman_id=(SELECT salesman_id FROM salesman WHERE city="London");

# Query 8
SELECT * FROM orders WHERE purch_amt > (SELECT AVG(purch_amt) FROM orders WHERE ord_date="2012-10-10");

# Query 9
SELECT commission FROM salesman WHERE salesman_id IN (SELECT salesman_id FROM customer WHERE city="Paris");

# Query 10
SELECT cust_name as Customer FROM customer WHERE customer_id IN (SELECT c.customer_id FROM customer c, orders o WHERE c.customer_id=o.customer_id AND o.ord_date="2012-10-05");

