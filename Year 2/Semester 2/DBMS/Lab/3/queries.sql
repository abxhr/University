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

select * from customer;

# Query 1
select c.cust_name as customer_name, s.name as salesman_name, c.city as city from customer c, salesman s where s.city = c.city;

# Query 2
select c.cust_name as customer_name, s.name as salesman_name from salesman s, customer c where c.salesman_id = s.salesman_id;

# Query 3
select ord_no, cust_name, orders.customer_id, orders.salesman_id  from orders, customer, salesman where customer.city != salesman.city and orders.customer_id = customer.customer_id and orders.salesman_id = salesman.salesman_id;

# Query 4
select orders.ord_no, customer.cust_name from orders, customer where orders.customer_id = customer.customer_id;

# query 5
select customer.cust_name as customer, customer.grade as grade from orders, salesman, customer where orders.customer_id = customer.customer_id and orders.salesman_id = salesman.salesman_id and salesman.city is not null and customer.grade is not null;

# query 6
select customer.cust_name as customer, customer.city as city, salesman.name as salesman, salesman.commission as commission from customer, salesman where customer.salesman_id = salesman.salesman_id and salesman.commission between 0.12 and 0.14;

# Query 7
select ord_no, cust_name, commission, purch_amt*commission as earned_commission from salesman, orders, customer where orders.customer_id = customer.customer_id and orders.salesman_id = salesman.salesman_id and customer.grade >= 200;

# Query 8
select cust_name as customer from customer where grade > 100;

# Query 9
select cust_name as customer from customer where customer.city = "New York" and customer.grade > 100;

# Query 10
select cust_name as customer from customer where city = "New York" or not grade > 100;

# Query 11
select cust_name as customer from customer where not(city = "New York" or grade > 100);

# Query 12
select * from orders where not((ord_date = "2012-09-10" and salesman_id > 5005) or purch_amt > 1000);