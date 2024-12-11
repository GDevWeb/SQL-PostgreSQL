/* 
Exercises
Exercise 1: Update Data
1.1.Increase the salary of all employees in the Sales department by 10%.
 */
-- UPDATE employees
-- SET salary = salary * 1.10
-- Where department = 'Sales';

-- SELECT * FROM employees WHERE department = 'Sales';

-- 1.2.Change the JobTitle of "Bob Smith" to "Senior Manager".
-- UPDATE employees
-- SET JobTitle = 'Senior Manager'
-- WHERE name = 'Bob Smith';

-- SELECT * FROM employees WHERE name = 'Bob Smith';

/* 
Exercise 2: Alter Table Structure
 */

-- 2.1.1.Add a new column Email (VARCHAR(150)).
-- ALTER TABLE employees
-- ADD COLUMN Email VARCHAR(150) NOT NULL DEFAULT 'myEmail@mail.com' ;

-- SELECT * FROM employees;

-- 2.2 Rename the Department column to Division.
-- ALTER TABLE employees
-- RENAME COLUMN Department TO Division;


-- 2.3.Set a default value of 'Unknown' for the Email column.
-- ALTER TABLE employees
-- ALTER COLUMN Email SET DEFAULT 'Unknown';

-- SELECT * FROM employees;

DROP TABLE IF EXISTS employees;