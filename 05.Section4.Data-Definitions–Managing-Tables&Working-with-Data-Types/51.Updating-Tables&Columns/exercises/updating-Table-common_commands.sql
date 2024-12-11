-- CREATE TABLE IF NOT EXISTS employees (
--   EmployeeID SERIAL PRIMARY KEY,
--   Name VARCHAR(100) NOT NULL,
--   Role VARCHAR(50),
--   Salary DECIMAL(10,2),
--   Department VARCHAR(50)
-- );

-- INSERT INTO employees (Name, Role, Salary, Department)
-- VALUES
--     ('Alice Johnson', 'Developer', 70000, 'Engineering'),
--     ('Bob Smith', 'Manager', 80000, 'Sales'),
--     ('Catherine Lee', 'Designer', 65000, 'Marketing');


-- -- Increase Alice's salary by 10%.
-- UPDATE employees
-- SET Salary = Salary + 2000
-- WHERE Name = 'Alice Johnson';

-- -- **1.1. Update a Single Row**
-- UPDATE employees
-- SET department = 'Design'
-- WHERE Role = 'Designer';

-- -- **1.3. Update All Rows**
-- ALTER TABLE employees
-- ADD COLUMN Bonus DECIMAL(10,2) DEFAULT 5000;

-- UPDATE employees
-- SET Bonus = 5000;

-- -- **2. Updating Table Structure**
-- 2.1 ADD column HireDate
-- ALTER TABLE employees
-- ADD COLUMN HireDate DATE DEFAULT CURRENT_DATE;

-- 2.2.Remove Bonus column
-- ALTER TABLE employees
-- DROP COLUMN Bonus;

-- 2.3. Rename a Column
-- Rename the Role column to JobTitle.
-- ALTER TABLE employees
-- ALTER COLUMN Role TO JobTitle;

-- 2.4. Change Column Data Type
-- Change the Salary column to store larger values.
-- ALTER TABLE employees
-- ALTER COLUMN Salary TYPE DECIMAL(12, 2);

-- 2.5.1. Set or Drop Default Values
-- Set a default value for the Department column.

-- ALTER TABLE employees
-- ALTER COLUMN Department SET DEFAULT 'General';

-- 2.5.2.Drop the default value.
-- ALTER TABLE employees
-- ALTER COLUMN Department DROP DEFAULT; 

-- 2.6. Add a Constraint
-- Add a NOT NULL constraint to the HireDate column.
-- ALTER TABLE employees
-- ALTER COLUMN HireDate SET NOT NULL;

-- 3. Combining Updates
-- Example: Multiple Updates in One Statement
-- Increase the salary by 5% and update the department for all developers.

UPDATE employees
SET 
Salary = Salary * 1.05,
Department = 'Software Developer'
WHERE JobTitle = 'Developer';

SELECT * FROM employees;


