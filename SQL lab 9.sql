use bank;


--  Task 1
select * from transaction
where Amount >(
select avg(Amount) from transaction);


-- Task 2
select Account_id, Account_type, Balance, CustomerId from account_branch
where Balance > ( 
select Avg(Balance) from account_branch );


-- Task 3
select Account_id, Account_type, Balance, CustomerId from account_branch
where Account_id in ( 
select Account_id from transaction 
where Transaction_type ="Deposit");


--  Task 4
select  Account_id, Account_type, Balance, CustomerId from account_branch
where Balance = (
select max(Balance) from account_branch);