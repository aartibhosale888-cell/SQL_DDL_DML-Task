Create database employees;
use employees;

Create table employees(
emp_id int,
emp_name varchar(200),
dept varchar(50),
city varchar(100),
salary float,
hire_date date,
manager_Id int );

Select * from employees;

insert into employees value(1,"Aarav Shah", "IT", "Pune", 72000, "2021-03-15", null),
(2, "Sneha Rao", "HR", "Mumbai", 48000, "2022-07-01", 1),
(3, "Karan Mehta", "Sales", "Dehli", 55000, "2023-01-10",1),
(4, "Priya Nair", "IT", "Pune", 64000, "2020-11-23", 1),
(5, "Ramesh Iyer", "Finance" ,"Mumbai", 59000, "2021-05-30", null),
(6, "Anita Desai", "Sales", "Pune", 41000, "2024-02-12", 3);

-- Q1 
Select emp_id, salary
from employees
where dept ="IT";

-- Q2
Select * from employees
where  salary>50000;

-- Q3
Select * from employees
where hire_date between 2022-01-01 and 2023-12-31;

-- Q4
Select * from employees
where City in ("pune", "Delhi", "Mumbai")
and manager_Id is null;


-- Q5
Select * from employees where emp_name like "A%";

-- Q6
Select * from employees where emp_name regexp "$sh";

-- Q7
Select * from  employees where emp_name like "%an%";

-- Q8
Select * from employees where dept like "_a___";

-- Q9
Select count(*) from employees
group by dept;

-- Q10
Select city ,Avg(salary) from employees
group by city;

-- Q11
Select dept ,
sum(salary) ,
max(salary) from employees
group by dept;

-- Q12
Select dept, city, count(*)
from employees
where salary>30000
group by dept, city;

-- Q13
Select dept, count(*) from employees
group by dept
having  count(*) >3;

-- Q14
Select city, avg(salary) from employees
group by city
having avg( salary) > 60000;

-- Q15
SELECT dept, SUM(salary) 
FROM employees
GROUP BY dept
HAVING SUM(salary) BETWEEN 200000 AND 500000;


-- Q16
SELECT dept, AVG(salary)
FROM employees
WHERE dept <> 'HR'
GROUP BY dept
HAVING AVG(salary) > 45000
ORDER BY avg(salary) DESC;

-- Q17
Select * from employees
order by salary desc
limit 5;

-- Q18
Select * from employees
order by hire_date desc
limit 3;

-- Q19
Select * from employees
order by salary desc
limit 5 offset 5;

-- Q20
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Q21
-- Among employees whose name starts with 'S', show the top 3 cities by headcount.







-- Q22
-- Show page 3 (10 rows per page) of Pune employees sorted by name.
SELECT *
FROM employees
WHERE city = 'Pune'
ORDER BY emp_name ASC
LIMIT 10 OFFSET 20;


-- Q23
SELECT dept, COUNT(*) ,AVG(salary)
FROM employees
WHERE hire_date > '2021-12-31'
GROUP BY dept
HAVING COUNT(*) > 2
ORDER BY avg(salary) DESC
LIMIT 2 OFFSET 1;

-- Q24
SELECT city, COUNT(*) 
FROM employees
WHERE emp_name LIKE '%ar%'
GROUP BY city
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC
LIMIT 3;