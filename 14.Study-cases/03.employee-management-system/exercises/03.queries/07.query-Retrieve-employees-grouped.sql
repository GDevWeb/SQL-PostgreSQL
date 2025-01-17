/* Queries */

--Retrieve employees grouped by job titles.

SELECT
e.first_name AS employee_fname,
e.last_name AS employee_lname,
jt.title AS job_name
FROM
Employee_Jobs as ej
INNER JOIN
employees as e ON e.employee_id = ej.employee_id
INNER JOIN
job_titles as jt ON jt.job_title_id = ej.job_title_id
GROUP BY 
e.first_name,
e.last_name,
jt.title
ORDER BY jt.title ASC;

