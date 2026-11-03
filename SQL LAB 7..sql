SELECT * FROM bank.transaction;
use bank;
Select Transaction_type, amount, row_number() over() from transaction;

Select Transaction_type, amount, row_number() over(order by amount) from transaction;

Select Transaction_type, amount, row_number() over(order by amount desc) from transaction;

Select Transaction_type, amount, row_number() over(partition by Transaction_type order by amount) from transaction;


-- LAG

Select Transaction_Date, amount, Transaction_type,
lag(amount) over(order by Transaction_Date),
lag(amount) over (partition by Transaction_Type order by Transaction_Date)
from transaction;

Select Transaction_Date, amount, Transaction_type,
lag(amount) over(partition by Transaction_type order by Transaction_Date)
from transaction;

-- LEAD
Select Transaction_Date, amount, Transaction_type,
lead(amount) over(partition by transaction_type order by Transaction_Date)
from transaction;

Select Transaction_Date, amount, Transaction_type,
lead(amount) over(partition by Transaction_type order by Transaction_Date)
from transaction;

Create table School(
Name varchar(200),
Marks int);

insert into  School value("A",78),("B", 79),("C",60),("D",79),("E",69),("F",79);

-- Rank()
Select Name, Marks, rank() over(order by Marks desc) from School;

-- Dens_RanK()
Select Name, Marks,dense_rank() over(order by Marks desc) from School;

Select Name, marks,
rank() over(order by marks desc) ,
dense_rank() over(order by marks desc),
row_number() over(order by marks desc) 
from School;

-- Lab 7

SELECT * FROM bank.loans;

-- Task 1
Select Loan_Id, Loan_Account, rank() over (order by Loan_Account ) from loans;

-- Task2
Select Loan_ID, Loan_Account, dense_rank() over(order by Loan_Account desc) from loans;

-- Task 3
Select Loan_Id, Loan_Account, row_number() over(order by Loan_Account desc) from loans;

-- Task 4
Select Loan_Id, Loan_Account,Intrest_Rate, Start_Date, End_Date, Customer_ID ,
row_number() over( partition by Customer_ID order by Loan_Account desc) from loans;

insert into loans value(306, 30000, 8.9,"2025-05-20","2035-05-20",101);

-- task 5
Select Loan_Id, Loan_Account, Intrest_Rate, Start_Date, End_Date, Customer_ID,
sum(Loan_Account) over(order by Loan_Account desc) from loans;

-- Task 6
Select Loan_Id, Customer_ID, Loan_Account,
Lag(Loan_Account) over(order by Loan_Account desc) from loans;

-- Task 7
SELECT Loan_Id, Customer_ID, Loan_Account,
LEAD(Loan_Account) OVER(ORDER BY Loan_Account DESC) FROM Loans;

