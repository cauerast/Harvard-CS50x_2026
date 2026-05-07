---- CREATING A DATABASE ----

-- ; -> use this to end a block of text 

CREATE DATABASE mydb; -- create a db
DROP DATABASE mydb; -- delete
USE mydb;

-- when database is readonly you cant use commands in it
ALTER DATABASE mydb READ ONLY = 1; -- readOnly 1 = true
ALTER DATABASE mydb READ ONLY = 0; -- readOnly 0 = false

CREATE TABLE employees ( -- to create a table in database
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
    CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00); -- check = if
    -- constraint = block code that not expected condition
);

-- to ad the check in a table that already exists ->
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00);

-- you can DROP the CONSTRAINTS also ->
ALTER TABLE employees
DROP chk_hourly_pay;

---- CONSTRAINTS ---- 
-- NOT NULL: Ensures that a column cannot accept NULL values.
-- UNIQUE: Ensures that all values in a column are different.
-- PRIMARY KEY: A combination of NOT NULL and UNIQUE. Uniquely identifies each row in a table.
-- FOREIGN KEY: Prevents actions that would destroy links between tables (ensures referential integrity).
-- CHECK: Ensures that the values in a column satisfy a specific condition.
-- DEFAULT: Sets a default value for a column when no value is specified.



SELECT * FROM employees; -- Select all from table -- reload -- (show table)

RENAME TABLE employees TO workers; -- rename

ALTER TABLE employees -- to change anything
ADD phone_number VARCHAR(15);

SELECT * FROM employees; -- reload db

ALTER TABLE employees
RENAME COLUMN phone_number TO email;

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);



-- CHANGE THE COLUMN LOCATION --
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name; -- after x

ALTER TABLE employees
MODIFY email VARCHAR(100)
FIRST; -- move colum to #0 index

ALTER TABLE employees
DROP COLUMN email;



-- CREATE ROWS -- 
INSERT INTO employees
VALUES (1, "Eugene", "Krabs", 25.50, "2026-01-10"),
       (2, "Squidward", "Tentacles", 15.00, "2026-02-03"),
       (3, "SpongeBob", "SquarePants", 12.50, "2026-01-05"),
       (4, "Patrick", "Star", 12.50, "2026-05-01"),
       (5, "Sandy", "Cheeks", 17.25, "2026-03-01"); -- in order

INSERT INTO employees(employee_id, first_name, last_name)
VALUES (6, "Sheldon", "Plankton"); -- to insert NULL values



-- SELECT -- 
SELECT * FROM employees;

SELECT first_name, last_name, hire_date
FROM employees;

SELECT * FROM employees WHERE employee_id = 2;
-- where = conditional

SELECT * FROM employees
WHERE hourly_pay >= 15.00;

SELECT * FROM employees
WHERE hire_date <= "2026-02-05";

SELECT * FROM employees WHERE employee_id != 1;

SELECT * FROM employees
WHERE hire_date IS NULL;



-- UPDATE --
UPDATE employees
SET hourly_pay = 10.25,
    hire_date = "2026-01-07"
WHERE employee_id = 6;

UPDATE employees
SET hourly_pay = 10.25,
    hire_date = "2026-01-07";
--this update all--



-- DELETE --
DELETE FROM employees
WHERE employee_id = 6; -- delete plankton

DELETE FROM employees; -- delete all


-- to dont delete accidentally
SET AUTOCOMMIT = OFF; -- save mannualy now

COMMIT; -- make a savepoint

ROLLBACK; -- restore by savepoint

SELECT * FROM employees;



-- DATE AND TIME --
CREATE TABLE test(
    my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

INSERT INTO test
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());

drop table test;

SELECT * FROM test;



---- CONSTRAINTS ---- 
-- NOT NULL: Ensures that a column cannot accept NULL values.
-- UNIQUE: Ensures that all values in a column are different.
-- PRIMARY KEY: A combination of NOT NULL and UNIQUE. Uniquely identifies each row in a table.
-- FOREIGN KEY: Prevents actions that would destroy links between tables (ensures referential integrity).
-- CHECK: Ensures that the values in a column satisfy a specific condition.
-- DEFAULT: Sets a default value for a column when no value is specified.



-- CONSTRAINTS -> UNIQUE and NOT NULL and DEFAULT--
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25) UNIQUE,
    price DECIMAL(4, 2) NOT NULL DEFAULT 0.00
);

-- to add UNIQUE later -> 
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);

-- to add NOT NULL later ->
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;

-- to add DEFAULT constraint later ->
ALTER TABLE products
ALTER price
SET DEFAULT 0; -- default price

INSERT INTO products
VALUES (100, "Hamburguer", 3.99),
       (101, "Fries", 1.89),
       (102, "soda", 1.00),
       (103, "ice cream", 1.49);

INSERT INTO products(product_id, product_name)
VALUES (104, "straw"),
       (105, "napkin"),
       (106, "fork" ),
       (107, "spoon"); -- price 0 is default

DELETE FROM products WHERE product_id >= 104

SELECT * FROM products



-- PRIMARY KEY, AUTO_INCREMENT and FOREIGN KEY-- 

CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)

INSERT INTO customers(first_name, last_name)
VALUES ("Fred", "Fish"),
       ("Larry", "Lobster"),
       ("Bubble", "Bass");

SELECT * FROM customers;


CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    transaction_date DATETIME DEFAULT NOW(),
    customer_id INT, -- NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- AUTO_INCREMENT is set by default = 1, but you can change ->
ALTER TABLE transactions
AUTO_INCREMENT = 10;


-- to add primary key in a table that already exists ->
ALTER TABLE transactions
ADD CONSTRAINT PRIMARY KEY(transaction_id);

INSERT INTO transactions(amount, customer_id)
VALUES (2.89, 3),
       (3.54, 2),
       (6.37, 3);

-- to rename foreign key
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)

DROP TABLE customers;

SELECT * FROM transactions



-- JOINS -- 
INSERT INTO transactions (amount, customer_id)
VALUES (1.00, NULL);
SELECT * FROM transactions;

INSERT INTO customers(first_name, last_name)
VALUES ("Poppy", "Puff");
SELECT * FROM customers;

SELECT * FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

SELECT * from transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

SELECT * from transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;



-- FUNCTIONS -- 
select * from transactions;
select COUNT(amount) as "today's transactions"
from transactions; -- count rows in this column column

select MAX(amount) as max
from transactions; -- return the maximum amount

select MIN(amount) as min
from transactions; -- return the min amount

select AVG(amount) as average
from transactions; -- count return the avegage of list;

select SUM(amount) as sum

from transactions; -- return them sum of column

select concat(first_name, " ", last_name) from employees as full_name
from employees; 

alter table employees;
add column job varchar(25) after hourly_pay;
SELECT * from employees;

select * from transactions;
