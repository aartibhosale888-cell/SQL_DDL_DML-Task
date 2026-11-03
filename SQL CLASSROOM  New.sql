select * from  account_branch;
select * from  customer;
Select * from loans;
 select * from  transaction;

-- q1
 Select Account_ID, Account_type, Balance from account_branch;

-- q2
Select * from account_branch
where Account_type = "saving";

-- q3
Select * from account_branch
where Balance >25000;

-- Q4
Select * from  transaction
where Amount >=5000 and  Amount <= 20000;

Select * from transaction
where Amount between 5000 and 20000;

-- q4

Select * from customer
where Customer_Id between 101 and 104;

Select * from customer 
where Customer_Id in ( 101,102, 103, 104);

Select * from customer
where Customer_Id = 101 or Customer_Id = 102 or Customer_Id = 103 or Customer_Id = 104;

-- q
select * from account_branch
where Account_type = "current";


-- q2
Select * from account_branch 
where Balance < 15000;

-- q3
Select * from transaction 
where amount between 1000 and 10000;

-- q4
Select * from customer
where Customer_Id = 104 or Customer_Id = 105;

-- S q1
Select * from loans
where  Intrest_Rate > 9 
and Loan_Account> 50000;

-- S q2

Select * from Branch
where  Branch_add = " shivajinagr pune";

-- s q 3
Select * from account_branch
where Balance between 500 and 5000;

-- s q 4
Select * from account_branch
where  Balance > 25000
and Account_type = "Saving";

-- S q5
select * from  loans
where Intrest_Rate <8.50;

-- S q6
Select * from customer
where  Date_of_birth > " 1998-01-01";

-- s q7
Select * from branch
where Branch_ID  between 2 and 4;

-- s q8
Select Branch_name , branch_phone  from branch;

-- s q9
Select * from customer
limit 2 offset 1;

-- s q10
Select * from customer
where Last_name like "P%";

-- s q11
Select * from transaction
where Transaction_type = "deposit";

-- s q 12
Select * from transaction 
limit 3 offset 2; 

-- s q 13
Select * from transaction
where Amount > 5000;

-- s q 14
Select * from account_branch
where Account_type = "Saving";

-- s q 15
Select * from customer
where First_name = "Rahul" or First_name = " Sneha";

-- s q 16
select * from transaction
where Amount >3000 
and Transaction_type ="deposit";

-- This displays customers whose names start with the letter R.
Select * from customer
where First_name regexp "^R";
 
1. -- Retrieve all current account records
Select * from account_branch
where  account_Type = "current";

2. -- Find accounts with balance less than 15000
Select * from account_branch
where Balance < 15000;

3. -- Display transactions between 1000 and 10000
Select * from transaction 
where Amount  between 1000 and 10000;

4. -- Retrieve customer records for CustomerID 104 and 105
Select * from customer
where Customer_Id = 104 or Customer_Id = 105;

5. -- Display customers whose last name starts with S
 Select * from customer
 where Last_name regexp "^s";
 
-- Display Customers in Alphabetical Order
Select * from customer
order by First_name Asc;

-- Display Accounts with Highest Balance First
Select * from account_branch
order by Balance desc;

-- Retrieve Unique Account Types
Select Distinct(Account_type) from account_branch;


-- Display Top 3 Highest Balance Accounts
Select * from account_branch
order by Balance desc
Limit 3;
-- Skip Initial Records While Viewing Transactions
 Select * from transaction 
 Limit 1  offset 2;
1. -- Display customers sorted by LastName
Select * from  customer
where customer 
2. -- Retrieve top 5 transactions with highest amount
Select * from transaction 
order by Amount desc
limit 5;
3. -- Display unique transaction types
Select Distinct(transaction_type) from transaction;

4. -- Skip the first 3 transaction records and display the next 4 records
Select * from transaction
Limit 4 offset 3;
 
-- Find Customers Without Phone Numbers
Select * from customer
where phone  is null;

-- Find Customers Having Email Addresses
Select * from customer 
where email is  Not null;
 
1. -- Find customers without email addresses
Select * from  customer 
where email is null;

2. -- Display all accounts where balance information is available
 Select * from account_branch
 where Balance is not null;
 
-- Search Customers Whose First Name Starts with “A”
Select * from customer
where first_name regexp "^A"; 

-- Search Customers Whose Email Contains “gmail”
Select * from customer
where email like "%gamil%";

-- Search Customers Whose Last Name Ends with “kar”
Select * from customer
where Last_name regexp "$kar";
 
 
1. -- Display customers whose first name starts with R
Select * from customer 
where first_name regexp "^R";
2. -- Find customers whose email contains yahoo
Select * from customer 
where email like "%yahoo%";

3. -- Display customers whose last name starts with P
Select * from customer 
where Last_name regexp "^P";

4. -- Search customers whose phone number ends with 99
Select * from customer
where phone like "%99";
  
 
-- The finance team wants to review only Savings and Current account holders.
Select * from account_branch
where Account_type in("Saving","current");

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
Select * from transaction
where Transaction_type in ("deposit","withdraw");

-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
 Select * from customer
 where Customer_Id  in (101,102,105);
 
1. -- Display accounts belonging to Salary and Savings account types
select * from account_branch
where Account_type ="salary" or Account_type="Saving";

2. --  Retrieve transactions for Payment and Deposit categories
Select * from transaction
where Transaction_type in ("Payment","Deposit");

3. -- Display customer records for CustomerID 103 and 104
Select * from customer
where Customer_ID  between 103 and 104;

4. --  Retrieve selected account records using AccountID values
Select * from account_branch
where Account_Id in (101,102,104);


-- Display Customers in Ascending Order of Last Name
Select * from customer 
order by Last_name asc;

-- Display Accounts with Highest Balance First
Select * from account_branch
order by Balance desc;

-- Display Transactions Sorted by Transaction Date
 SELECT  * FROM transaction
ORDER BY Transaction_Date ASC;
 
1. -- Display customers sorted by FirstName
SELECT * FROM customer
ORDER BY First_name ASC;

2. -- Display accounts sorted by AccountType
SELECT * FROM account_branch
ORDER BY Account_type ASC;

3. -- Display transactions sorted by Amount in descending order
SELECT * FROM transaction
ORDER BY Amount desc;


4. -- Display customers sorted by DateOfBirth
 SELECT * FROM customer
ORDER BY Date_of_birth Asc;

-- Display Only Top 5 Highest Balance Accounts
Select * from account_branch
order by Balance desc
limit 5;

-- Display First 3 Customer Records
Select * from customer
limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
Select * from transaction 
limit 2 offset 3;
 
1. -- Display top 3 transactions with highest amount
Select * from  transaction
order by Amount desc
limit 3;
2. -- Retrieve only 4 customer records
Select * from customer 
limit 4;

3. -- Skip first 2 account records and display next 3 records
Select * from account_branch
limit 3 offset 2;

4. -- Display top 5 latest transactions

 Select * from transaction
 order by Amount limit 5;
 
 
-- Display Savings Account Customers Sorted by Balance
Select * from account_branch
where Account_type ="Saving"
order by Balance asc;

-- Categorize Accounts Using Balance
Balance >50000 then premium account
Balance >2500 then standar account
 
 
 Select Account_ID, balance, case
 when Balance>50000 then "premium"
 when Balance >25000 then "Standar"
 end as Account_Type from account_branch;
 
 Select Transaction_Id, Amount,
 case when Amount>=7000 then "High Transaction"
 when Amount>=5000 then  "Mideum Transaction"
 when Amount>=3000 then "Low transaction"
 end as Transaction_type from transaction;
 
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.
