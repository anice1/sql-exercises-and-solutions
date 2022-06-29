## Exercise 4
-- Retrieve a list of all employees that have been hired in 2000.
USE employees;
SELECT * FROM employees WHERE hire_date LIKE('2000%');