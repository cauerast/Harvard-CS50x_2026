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
);

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

SELECT * FROM employees;



-- SELECT -- 
