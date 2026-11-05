use bank;
-- task 1 Generate Accounts Transaction Reports
SELECT a.Account_ID, a.Account_Type, a.Balance,
t.Transaction_Id, t.Transaction_Date,
t.Transaction_type, t.Amount
FROM account_branch  a
INNER JOIN transaction t
ON a.Account_ID = t.AccountID;

-- task 2 Display All Accounts Including Those Without Transactions
SELECT a.Account_ID, a.Account_Type, a.Balance,
t.Transaction_Id, t.Transaction_Date,
t.Transaction_Type, t.Amount
FROM account_branch  a
LEFT JOIN transaction t
ON a.Account_ID = t.AccountID;

-- task 3 Generate Deposit Transaction Reports
SELECT a.Account_ID, a.Account_Type, a.Balance,
t.Transaction_Id, t.Transaction_Date,
t.Transaction_Type, t.Amount
FROM account_branch a
INNER JOIN transaction t
ON a.Account_ID = t.AccountID
WHERE t.Transaction_Type = 'Deposit';

-- task 4 Generate High Balance Account Transaction Reports
SELECT a.Account_ID, a.Account_Type, a.Balance,
t.Transaction_Id, t.Transaction_Date,
t.Transaction_Type, t.Amount
FROM account_branch a
INNER JOIN transaction t
ON a.Account_ID = t.AccountID
WHERE a.Balance > 30000
ORDER BY a.Balance DESC;
