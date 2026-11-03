use bank;
. -- Display customer Table
select * from Customer;

2. --  Display all customer FirstName in uppercase.
select Frist_name,upper(Frist_name) as new_name from Customer;

3 -- . Display all customer FirstName in lowercase.d
select Frist_name,lower(Frist_name) as l_s from Customer;

4. -- Find the total number of characters in each customer FirstName
select Frist_name,length(Frist_name) as lengthofname from Customer;

5. -- Display only the first three characters of customer FirstName .
select Frist_name,left(Frist_name,3)from Customer;

6. -- Combine customer's FirstName with LastName.
select concat(Frist_name," ",Last_name) as combine from Customer;

-- TRIM
select Frist_name,TRIM(Frist_name) as trim_name from Customer;
select upper(" hello"),length(" hello"),trim(" hello"),length(trim( "hello"));

-- RIGHT
 select Frist_name,RIGHT(Frist_name,3)from Customer;
 
 -- MID
 select Frist_name,mid(Frist_name,2)from Customer;
 
 -- ROUND()
 SELECT ROUND(15.5),CEIL(15.5),FLOOR(15.5),ABS(15.5),MOD(15,5);
 
 
 -- 1. Display customer Table
 SELECT * FROM Customer;
 
-- 2. Display the current system date
select current_date();

-- 3. Display the current system date and time.
select now();

4. -- Display the Birth of year
select year(Date_of_Birth)from Customer;

5. -- Display the Birth month
select month(Date_of_Birth) from Customer;

6. -- Calculate the number of days since BirthDate
select Date_of_Birth,datediff(curdate(),Date_of_Birth) from Customer;

7. -- Find the latest birth date.
select  max(Date_of_Birth)from Customer;

8. -- Find the earliest birth date
select min(Date_of_Birth) from Customer;


1. -- Categorize customers as Adult or Young based on their birth year
 select year(Date_of_Birth),case
 when year(Date_of_Birth)>1998 then "Young"
  when year(Date_of_Birth)<=1998 then "adult" 
  end as type from Customer;
  
2. -- Display 'Not Available' if a phone number is NULL
 select ifnull(phone,"not available")from Customer;
 
3. --  Compare two customer names
 select Frist_name, nullif(Frist_name,"priya") from Customer;
 
4. -- Calculate the total balance maintained across all customer accounts.
 select sum(Balance) from account;
 
5. -- Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
 select avg(Balance) from account;
 
6. -- Identify the highest balance maintained in any customer account.
 select max(Balance)from account;
 
7. -- Identify the lowest balance maintained in any customer account
  select min(Balance)from account;
  
8. -- Determine the total number of customer accounts available in the system.
select count(distinct(Account_ID)) from account_branch;

9. -- The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits from customers.
 select Account_type,sum(Balance)from account_branch
 group by Account_type;
 
10. -- The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select Account_type,sum(Balance) from account_branch
group by Account_type
having sum(Balance)>25000;