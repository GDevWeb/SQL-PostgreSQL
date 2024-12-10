-- Create the departments table
CREATE TABLE IF NOT EXISTS departments (
  DepartmentID SERIAL PRIMARY KEY,
  DepartmentName VARCHAR(50) NOT NULL UNIQUE
);

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
  EmployeeID SERIAL PRIMARY KEY,
  Name VARCHAR(50) UNIQUE,
  Role VARCHAR(50),
  DepartmentID INTEGER REFERENCES departments(DepartmentID),
  HireDate DATE DEFAULT CURRENT_DATE
);

-- Insert departments with conflict handling
INSERT INTO departments (DepartmentName)
VALUES
    ('Engineering'),
    ('Marketing'),
    ('Sales'),
    ('Human Resources')
ON CONFLICT (DepartmentName) DO NOTHING;

-- Insert employees with conflict handling
INSERT INTO employees (Name, Role, DepartmentID, HireDate)
VALUES
    ('Alice Johnson', 'Developer', 1, '2024-06-01'),
    ('Bob Smith', 'Manager', 2, '2024-06-10'),
    ('Catherine Lee', 'Sales Executive', 3, '2024-06-15'),
    ('David Brown', 'QA Engineer', 1, '2024-07-01'),
    ('Eve Adams', 'HR Specialist', 4, '2024-07-05')
ON CONFLICT (Name) DO NOTHING;

-- Exercise 1: Insert New Departments and Employees
INSERT INTO departments (DepartmentName)
VALUES ('Finance'), ('Operations');

-- Insert new employees for the new departments
INSERT INTO employees (Name, Role, DepartmentID, HireDate)
VALUES
    ('Frank White', 'Accountant', 5, '2024-08-01'),
    ('Grace Black', 'Operations Manager', 6, '2024-08-10');

-- Exercise 2: Query Employees by Department
-- Retrieve all employees who work in the Finance department
SELECT e.Name, e.Role, d.DepartmentName
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Finance';

-- View all employees
SELECT * FROM employees;

-- View all departments
SELECT * FROM departments;

-- Uncomment to drop tables if needed
-- DROP TABLE employees;
-- DROP TABLE departments;

-- DROP TABLE departments;
-- -- DROP TABLE employees;
