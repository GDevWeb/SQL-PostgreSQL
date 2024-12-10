-- Exercise 1: Insert a Single Row

CREATE TABLE  IF NOT EXISTS employees (
  EmployeeID Serial PRIMARY KEY,
  Name VARCHAR(100) NOT NULL UNIQUE, 
  Role VARCHAR(50) DEFAULT 'Employee', 
  HireDate Date DEFAULT CURRENT_DATE
  );

INSERT INTO employees(Name, Role, HireDate)
VALUES 
('Hello World', 'Developer', '2024-03-02'),
('Good Afternoon World', 'Data analyst', '2023-03-02'),
('Good Evening World', 'Security Analyst', '2023-03-02')
ON CONFLICT (Name) DO NOTHING
RETURNING EmployeeID, Name, HireDate;

-- SELECT * FROM employees
-- DROP TABLE employees;

