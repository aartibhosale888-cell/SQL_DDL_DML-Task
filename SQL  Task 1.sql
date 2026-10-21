create database student;
use student;

create table student(
student_Id int,
student_name varchar(50),
City varchar(30),
Course varchar(40),
Marks int);

Select * from learners1;

insert into student(Student_ID,student_name,city,course,marks) value(101,"asha", "pune", "Data analytics",78), (102, "Ravi", "Mumbai", "Data science", 35), (103, "Meena", "Chennai", "Data Analytics",88),
(104, "karan", "Delhi", "Excel", 29), (105, "Sara", "Pune", "Data Science", 91);

alter table student add column Email varchar(50);

alter table student drop column city;

alter table student rename column marks to score;

alter table student modify score float;

rename table student to learners1;

insert into  learners1 value(106,"Vikram", "Excel", 67, "xyz@12");

alter table learners1 add column City varchar(50);

update learners1 set City ="Pune" where student_Id =101;
update learners1 set City ="Mumbai" where student_Id =102;
update learners1 set City ="Chennai" where student_Id =103;
update learners1 set City ="Delhi" where student_Id =104;
update learners1 set City ="Pune" where student_Id =105;
update learners1 set City ="Nagpur" where student_Id =106;

update learners1 set City ="Hyderabad" where Student_Id=103;

delete from learners1 where Score<40;

truncate table learners1;

drop  table learners1;