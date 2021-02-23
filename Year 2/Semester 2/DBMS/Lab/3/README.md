# Lab 3

TABLE : SALESMAN

| salesman_id | name | city | commission |

TABLE : CUSTOMER

| customer_id | cust_name | city | grade | salesman_id |

TABLE : ORDERS

| ord_no | purch_amt | ord_date | customer_id | salesman_id |

1. Write a query to find those customers with their name and those salesmen with their name and city who lives in the same city.\

2. Write a SQL statement to find the names of all customers along with the salesmen who works for them. \

3. Write a SQL statement to display all those orders by the customers not located in the same cities where their salesmen live. \

4. Write a SQL statement that finds out each order number followed by the name of the customers who made the order. \

5. Write a SQL statement that sorts out the customer and their grade who made an order. Each of the customers must have a grade and served by at least a salesman, who belongs to a city. \

6. Write a query that produces all customers with their name, city, salesman and commission, who served by a salesman and the salesman works at a rate of the commission within 12% to 14%. \

7. Write a SQL statement that produces all orders with the order number, customer name, commission rate and earned commission amount for those customers who carry their grade is 200 or more and served by an existing salesman. \

8. Write a query to display all customers with a grade above 100. \

9. Write a query statement to display all customers in New York who have a grade value above 100. \

10. Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100. \

11. Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100. \

12. Write a SQL statement to display either those orders which are not issued on date 2012-09-10 and issued by the salesman whose ID is 5005 and below or those orders which purchase amount is 1000.00 and below. \

- [Answers](queries.sql)