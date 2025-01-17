/* Queries */

--Find the top 5 highest-paid employees.

SELECT 
first_name,
last_name,
salary
FROM
employees
ORDER BY salary DESC LIMIT 5;