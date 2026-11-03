
use Demo;
CREATE TABLE t1 (
  TransactionID   INT PRIMARY KEY,
  CustomerName    VARCHAR(50),
  City            VARCHAR(30),
  TransactionType VARCHAR(20),
  Amount          INT,
  Mode            VARCHAR(10),
  TransactionDate DATE,
  Remarks         VARCHAR(20)
);

INSERT INTO t1 VALUES
(1,  'Amit Sharma',    'Pune',      'Deposit',    15000, 'UPI',  '2026-01-05', 'Salary'),
(2,  'Priya Patil',    'Mumbai',    'Withdrawal',  3000, 'Cash', '2026-01-12', NULL),
(3,  'Rahul Verma',    'Delhi',     'Transfer',    8500, 'NEFT', '2026-01-18', 'Rent'),
(4,  'Sneha Kulkarni', 'Pune',      'Deposit',     4500, 'Card', '2026-02-02', NULL),
(5,  'Arjun Singh',    'Nagpur',    'Withdrawal', 12000, 'Cash', '2026-02-09', 'ATM'),
(6,  'Neha Joshi',     'Mumbai',    'Deposit',    25000, 'NEFT', '2026-02-15', 'Bonus'),
(7,  'Vikram Rao',     'Hyderabad', 'Transfer',    6000, 'UPI',  '2026-03-01', NULL),
(8,  'Anjali Desai',   'Pune',      'Withdrawal',  1500, 'Card', '2026-03-07', 'Shopping'),
(9,  'Rohan Mehta',    'Delhi',     'Deposit',     9800, 'UPI',  '2026-03-14', NULL),
(10, 'Kavita Nair',    'Kochi',     'Transfer',    2200, 'NEFT', '2026-03-21', 'Gift'),
(11, 'Sanjay Kapoor',  'Mumbai',    'Withdrawal',  7500, 'Cash', '2026-04-03', 'Rent'),
(12, 'Pooja Sharma',   'Nagpur',    'Deposit',    18000, 'Card', '2026-04-10', 'Salary'),
(13, 'Aakash Gupta',   'Pune',      'Transfer',    5000, 'UPI',  '2026-04-18', NULL),
(14, 'Meera Iyer',     'Chennai',   'Deposit',     3500, 'NEFT', '2026-05-02', 'Refund'),
(15, 'Aditya Bhosale', 'Pune',      'Deposit',    30000, 'UPI',  '2026-05-09', 'Bonus');

Select * from t1;


-- Q1
Select CustomerName as c_name, city from t1
where city= "pune";

-- Q2
Select * from t1
where TransactionType = "withdrawal" and mode ="Cash";

-- Q3
Select * from t1
where mode="UPI" and amount>=1000
order by Amount desc
limit 1;

Select * from t1
where mode="UPI" and amount>=1000
order by Amount 
limit 1 offset 4;

-- Q4
Select TransactionType , max(Amount) from t1
Group by TransactionType
order by max(Amount) desc
limit 1;



-- 
Select * from t1
where CustomerName like "A%";

Select * from t1 where CustomerName like "%e";

Select * from t1 where CustomerName like "%a%";

Select * from t1 where mode like "u_i";

Select * from t1 where mode like "___";

Select * from t1 where CustomerName  regexp "^A";

Select * from t1 where CustomerName  regexp "a$";

Select * from t1 where mode  regexp "UPI";

Select * from t1 where mode  regexp "UPI!Cash";




1 -- Show all Deposit transactions.
Select * from t1
where transactionType ="Deposit";

2. -- Show TransactionID, CustomerName and Amount for transactions above 10000.
Select TransactionID ,CustomerName, Amount
from t1
where Amount>=10000;

3. -- Show all transactions made in Pune.
Select * from t1 
where City ="Pune";

4.  --Show Deposits with an amount above 10000.
Select * from t1
where TransactionType ="Deposit" and  amount>10000;

5. -- Show Withdrawals made in Cash.
Select * from t1
where TransactionType ="withdrawal" and  Mode="Cash";

6. -- Show transactions from Mumbai or Delhi
Select * from t1
where City regexp "Mumbai|Delhi";

7. -- Write the same query as Q6
where City regexp "Mumbai|Delhi";

8. -- Show transactions that were not made through UPI.
Select * from  t1 where Not mode ="UPI";

 9. -- Show transactions with an amount between 5000 and 10000.
 Select * from t1
where Amount between 5000 and 10000;

10. -- Show transactions from cities other than Pune, Mumbai and Delhi
Select * from t1 
where City regexp "pune|Mumbai|Delhi";

11. -- Show transactions made in March 2026.
Select * from t1
where transactionDate ="march 2026";

12. -- Show customers whose name starts with A.
Select * from t1  where CustomerName like "A%";

13. --  Show customers whose name ends with a.
Select * from t1 where CustomerName like "%a";

14. -- Show customers whose second letter is a.
Select * from t1 where CustomerName like "_a%";

15. -- Show customers whose name contains sh.
Select * from  t1 where CustomerName like "%sh%";

16.  -- Show customers whose name does not start with A.
Select * from t1  where CustomerName Not like "A%";

17.  -- Show transactions where Remarks is empty (NULL).
Select * from t1 where Remarks is Null;

18. -- Use REGEXP to show customers whose name starts with A or P.
Select * from t1  where CustomerName Regexp "^A|p";

19. --  Use REGEXP to show customers whose name ends with a or i.
Select * from  t1 where CustomerName Regexp "$A|i"; 
,
20. -- Show Deposits or Transfers above 5000 that were made through UPI or NEFT.
Select * from t1
where TransactionType in ("Deposit", "Transfer") and mode in ("UPI", "NEFT");



