## Exercise 7
-- How many contracts have been registered in the ‘salaries’ table with duration of more than one year and
-- of value higher than or equal to $100,000?
-- Hint: You may wish to compare the difference between the start and end date of the salaries contracts.

USE employees;

SELECT 
    *, (to_date - from_date >=1) AS duration
FROM
    salaries
WHERE (to_date - from_date >=1) AND salary>=100000;