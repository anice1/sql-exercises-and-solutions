USE employees_mod;
## Exercise 1
-- Find the average salary of the male and female employees in each department.

SELECT 
    emp.gender, dept.dept_name, ROUND(AVG(sal.salary),2) AS salary
FROM
    t_employees emp
        JOIN
    t_dept_emp dpt_emp ON dpt_emp.emp_no = emp.emp_no
        JOIN
    t_departments dept ON dept.dept_no = dpt_emp.dept_no
        JOIN
    t_salaries sal ON sal.emp_no = emp.emp_no
GROUP BY emp.gender , dept.dept_name
ORDER BY dept_name