/* Queries */

/* Retrieve the total salary expense by department. */
SELECT
d.department_id,
d.name AS department_name,
SUM(e.salary) AS total_salary_expense
FROM
employees AS e
INNER JOIN
departments as d 
ON
e.department_id = d.department_id
GROUP BY
d.department_id, d.name;