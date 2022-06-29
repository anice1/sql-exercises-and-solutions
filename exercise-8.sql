## Exercise 8
-- Create a trigger that checks if the hire date of an employee is higher than the current date. If true, set the
-- hire date to equal the current date. Format the output appropriately (YY-mm-dd).
-- Extra challenge: You can try to declare a new variable called 'today' which stores today's data, and then
-- use it in your trigger!
-- After creating the trigger, execute the following code to see if it's working properly.

USE employees;

DROP TRIGGER IF EXISTS employees.check_hire_date;

DELIMITER $$
CREATE 
    TRIGGER  check_hire_date
 BEFORE INSERT ON employees FOR EACH ROW 
    BEGIN 
		IF NEW.hire_date > CURDATE() THEN 
			SET NEW.hire_date = DATE_FORMAT(CURDATE(), '%y-%m-%d');
        END IF;
    END;
DELIMITER ;

SELECT * FROM employees WHERE emp_no = 500001;
INSERT INTO employees VALUES(500001, '2000-03-12', 'Ac', 'Nice', 'M', '2022-12-12');