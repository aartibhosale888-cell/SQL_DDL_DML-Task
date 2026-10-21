create database bookstore_DB;

use bookstore_DB;

Create table customers(
cus_id int,
Full_Name varchar(200),
Email varchar(100),
phone varchar(10),
City varchar(100),
Created_date date);

Select * from customers;

create table books(
book_id int,
Title varchar(200),
Author varchar(200),
Category varchar(150),
Price float,
Stok_qty int );

Select * from books;

Create table orders(
Order_id int,
Customer_id int,
Order_date date,
Status varchar(100));
 Select * from  orders;

create table Order_items(
Order_item_id int,
Order_id int,
book_id int,
quantity int );

Select * from Order_items;


Alter table customers add column Country varchar(100);
Alter table Order_items add column Discount float;
Alter table customers modify column phone Varchar(15);
Alter table books rename column Stok_qty to Stock_quantity ;

ALTER TABLE customers
ADD CONSTRAINT pk_customers
PRIMARY KEY (cus_id);

ALTER TABLE books
ADD CONSTRAINT pk_books
PRIMARY KEY (book_id);

ALTER TABLE orders
ADD CONSTRAINT pk_orders
PRIMARY KEY (order_id);

ALTER TABLE order_items
ADD CONSTRAINT pk_order_items
PRIMARY KEY (order_item_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(cus_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_items_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_items_books
FOREIGN KEY (book_id)
REFERENCES books(book_id);

ALTER TABLE customers
ADD CONSTRAINT uq_customers_email
UNIQUE (email);

ALTER TABLE customers
MODIFY COLUMN full_name VARCHAR(100) NOT NULL;

ALTER TABLE books
MODIFY COLUMN title VARCHAR(150) NOT NULL;

ALTER TABLE books
MODIFY COLUMN price DECIMAL(10,2) NOT NULL;

ALTER TABLE orders
MODIFY COLUMN order_date DATE NOT NULL;

ALTER TABLE books
ADD CONSTRAINT chk_book_price
CHECK (price > 0);

ALTER TABLE order_items
ADD CONSTRAINT chk_item_quantity
CHECK (quantity > 0);

ALTER TABLE books
ADD CONSTRAINT chk_book_stock
CHECK (stock_quantity >= 0);

ALTER TABLE orders
ALTER COLUMN status SET DEFAULT 'Pending';

ALTER TABLE customers
ALTER COLUMN created_date SET DEFAULT (CURRENT_DATE);

SHOW CREATE TABLE customers;

SHOW CREATE TABLE books;

SHOW CREATE TABLE orders;

SHOW CREATE TABLE order_items;


 
 INSERT INTO customers
(cus_id, full_name, email, phone, city, country)
VALUES
(1, 'Aarav Sharma', 'aarav@example.com', '9876500001', 'Pune', 'India'),
(2, 'Priya Patil', 'priya@example.com', '9876500002', 'Mumbai', 'India'),
(3, 'Rahul Deshmukh', 'rahul@example.com', '9876500003', 'Kolhapur', 'India'),
(4, 'Sneha Joshi', 'sneha@example.com', '9876500004', 'Nashik', 'India'),
(5, 'Karan Shah', 'karan@example.com', '9876500005', 'Satara', 'India');

INSERT INTO books
(book_id, title, author, category, price, stock_quantity)
VALUES
(1, 'Wings of Fire', 'A. P. J. Abdul Kalam', 'Biography', 250, 20),
(2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300, 15),
(3, 'Atomic Habits', 'James Clear', 'Self-Help', 450, 25),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 350, 18),
(5, 'Ikigai', 'Hector Garcia', 'Self-Help', 280, 12),
(6, 'Harry Potter', 'J. K. Rowling', 'Fantasy', 500, 30),
(7, 'The Hobbit', 'J. R. R. Tolkien', 'Fantasy', 400, 10),
(8, 'Think and Grow Rich', 'Napoleon Hill', 'Finance', 320, 14),
(9, 'Pride and Prejudice', 'Jane Austen', 'Classic', 270, 16),
(10, 'Deep Work', 'Cal Newport', 'Self-Help', 380, 22);


INSERT INTO orders
(order_id, customer_id, order_date, status)
VALUES
(1, 1, '2026-10-01', 'Pending'),
(2, 2, '2026-10-02', 'Shipped'),
(3, 3, '2026-10-03', 'Pending'),
(4, 4, '2026-10-04', 'Delivered'),
(5, 5, '2026-10-05', 'Pending'),
(6, 1, '2026-10-06', 'Shipped');

