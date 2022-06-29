## Exercise 6

-- Create a procedure that asks you to insert an employee number and that will obtain an output containing
-- the same number, as well as the number and name of the last department the employee has worked in.
-- Finally, call the procedure for employee number 10010.

-- If you've worked correctly, you should see that employee number 10010 has worked for department
-- number 6 - "Quality Management".
USE employees;

DELIMITER $$
DROP PROCEDURE IF EXISTS employee_info;
CREATE PROCEDURE employee_info (IN p_emp_no INT)
BEGIN
	SELECT emp.emp_no, dept.dept_name 
    FROM employees emp
		JOIN dept_emp emp_dpt ON emp_dpt.emp_no = emp.emp_no
        JOIN departments dept ON dept.dept_no = emp_dpt.dept_no
    WHERE emp.emp_no = p_emp_no
    GROUP BY emp.emp_no, dept.dept_name
    ORDER BY dept_name DESC;
END $$

CALL employee_info(10010);