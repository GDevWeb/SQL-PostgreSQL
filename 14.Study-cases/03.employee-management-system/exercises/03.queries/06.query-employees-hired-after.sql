/* Queries */

--employees hired after a specific date

SELECT
first_name,
last_name,
hire_date,
FROM
employees
WHERE hire_date > '2019-01-01'
GROUP BY
first_name,
last_name,
hire_date
ORDER BY
hire_date ASC;