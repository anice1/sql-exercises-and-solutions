## Exercise 2
-- Find the lowest department number encountered in the 'dept_emp' table. Then, find the highest department number.
USE employees_mod;

SELECT MIN(dept_no) FROM t_dept_emp;
SELECT MAX(dept_no) FROM t_dept_emp;
