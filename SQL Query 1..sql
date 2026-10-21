create database Bank1;

use Bank1;

create table Bank1(
Account_ID int ,
Acoount_Type varchar(20),
Balance float);

select * from Bank1;

create table transaction(
Transaction_Id int,
Amount float,
Transaction_type varchar(20));

Select * from  transaction;

create table Branch(
Branch_name varchar(100),
Branch_Add varchar(200),
branch_phone varchar(15));
Select * from Branch;

create table Account_branch(
Assignment_date date);


create table Loans(
Loan_Id int,
Loan_Account float,
Intrest_Rate float,
Start_Date date,
End_Date date);

Select * from Loans;

create table Customer(
Customer_Id  int,
First_name varchar(50),
Last_name varchar(50),
Email varchar(100),
Phone varchar(15));

select * from Customer;
alter table Customer add Date_of_birth date;
alter table Customer modify Date_of_birth date;