## Exercise 3
-- Obtain a table containing the following three fields for all individuals whose employee number is not greater than 10040:
-- - employee number
-- - the lowest department number among the departments where the employee has worked in (Hint: use a subquery to retrieve this value from the 'dept_emp' table)
-- - assign '110022' as 'manager' to all individuals whose employee number is lower than or equal to 10020, and '110039' to those whose number is between 10021 and 10040 inclusive.

USE employees;

SELECT 
    emp.emp_no,
    MIN(dpt_emp.dept_no) AS dept_no,
    (CASE
        WHEN (emp.emp_no <= 10020) THEN 110022
        WHEN (emp.emp_no BETWEEN 10021 AND 10040) THEN 110039
    END) AS manager
FROM
    employees emp
        JOIN
    dept_emp dpt_emp ON dpt_emp.emp_no = emp.emp_no
WHERE
    emp.emp_no BETWEEN 10001 AND 10040
GROUP BY emp.emp_no;