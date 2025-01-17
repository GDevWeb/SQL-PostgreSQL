/* Queries */

/* List all employees in a particular department */

SELECT 
e.first_name,
e.last_name,
d.name As department_name
 FROM employee_jobs AS ej
 INNER JOIN 
 employees as e ON e.employee_id = ej.employee_id 
 INNER JOIN 
 departments AS d ON e.employee_id = ej.employee_id 
 WHERE d.name = 'Engineering';
