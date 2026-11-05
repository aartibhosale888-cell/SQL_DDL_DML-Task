use bank;

-- Task 1
create view High_balance_account as 
select Account_id, Account_type, Balance ,CustomerId from account_branch
where balance > 30000; 


-- Task 2
select * from High_balance_account;



-- Task 3
CREATE OR REPLACE VIEW High_balance_account as
select a.Account_id, a.Account_type, a.Balance, a.CustomerId,
t.Transaction_Id,
t.Transaction_Date,
t.Transaction_type,
t.Amount
from account_branch a 
inner join transaction t 
on a.Account_id = t.AccountId
where a.Balance > 30000;


-- Task 4
SELECT
Account_id,
    Account_Type,
    Balance,
    CustomerId,
    Transaction_Id,
    Transaction_Date,
    Transaction_Type,
    Amount
FROM High_Balance_Account
ORDER BY Balance DESC;