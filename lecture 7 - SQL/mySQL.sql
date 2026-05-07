---- creating a database ----
CREATE DATABASE mydb; -- create a db
DROP DATABASE mydb; -- delete
USE mydb

-- when database is readonly you cant use commands in it
ALTER DATABASE mydb READ ONLY = 1; -- readOnly 1 = true
ALTER DATABASE mydb READ ONLY = 0; -- readOnly 0 = false

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

SELECT * FROM employees;