use 20190233db;

CREATE TABLE employee(id int, name varchar(50), superid int, salary int, bdate date, dno int, primary key(id));
CREATE TABLE dept(dnumber int, dname varchar(50), primary key(dnumber));

INSERT INTO employee values(1, 'john', 3, 100000, '1960-01-01', 1);
INSERT INTO employee values(2, 'mary', 3, 50000, '1964-12-01', 3);
INSERT INTO employee values(3, 'bob', NULL, 80000, '1974-02-07', 3);
INSERT INTO employee values(4, 'tom', 1, 50000, '1978-01-17', 2);
INSERT INTO employee values(5, 'bill', NULL, NULL, '1985-01-20', 1);

INSERT INTO dept VALUES(1, 'Payroll');
INSERT INTO dept VALUES(2, 'TechSupport');
INSERT INTO dept VALUES(3, 'Research');

create table deptsal as (select dnumber, 0 as totalsalary from dept);
select * from deptsal;

delimiter //
create procedure updateSalary (IN param1 int)
begin
	update deptsal
	set totalsalary = (select sum(salary) from employee where dno = param1)
    where dnumber = param1;
end; //
delimiter ;

SET SQL_SAFE_UPDATES = 0;

call updateSalary(1);
call updateSalary(2);
call updateSalary(3);

select * from deptsal;

delimiter |
create function giveRaise (oldval double, amount double)
returns double
deterministic
begin
	declare newval double;
    set newval = oldval * (1 + amount);
    return newval;
end |
delimiter ;

select name, salary, giveRaise(salary, 0.1) as newsal from employee;