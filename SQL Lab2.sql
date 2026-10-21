create database Lab2;
use Lab2;

create table Account(
Account_ID int,
Account_type varchar(20),
Balance float);

Select * from Account;
alter table Account add constraint pk primary key (Account_ID);

create table Transaction(
Transaction_ID int,
Transaction_Date date,
Account float,
Transaction_Type varchar(20));

Select * from Transaction;
alter table Transaction add column Account_ID int;
alter table Transaction add constraint  foreign key (Account_ID) References Account(Account_ID);

create table Branch(
Branch_ID int,
Branch_Name varchar(100),
Branch_Address varchar(200),
Branch_phone varchar(15));

Select * from Branch;
alter table  Branch  add  constraint  foreign key (Branch_ID) References Account(Account_ID);

Create table Account_Branch(
Assignment_Date date);

Select * from Account_branch;

create table Loan(
Loan_ID int,
Loan_Amount float,
Intrest_Rate float,
Start_Date date,
End_Date date);

Select * from Loan;
alter  table Loan add column Customer_ID int ;
alter table Loan add constraint fk_Loan_Customer foreign key (Customer_ID) references Customer(Customer_id);


Create table Customer(
Frist_name varchar(50),
Last_name varchar(50),
Email varchar(100),
Phone varchar(15));

Select * from Customer;

Alter table Customer add Date_of_Birth date;
Alter table customer add Column Cus_ID int;
Alter table customer drop  column Cus_ID;
alter table customer add constraint  pk primary key (Customer_id);
show create table Customer;

Alter table Customer modify phone varchar(20);

Alter table Account add constraint C_K  check(Balance>1000);
Alter table Account add Account_Branch varchar(100);
Alter table Account drop column Account_Branch;

Alter table customer add customer_id int;
Alter table customer add constraint pk primary key(customer_id);

Alter table customer Modify Frist_name varchar(200) Not null;
Alter table customer add constraint U_K unique(email);

Alter table Account add column C_ID int;
Alter table Account add constraint f_k foreign key (C_ID) references customer(customer_id);

