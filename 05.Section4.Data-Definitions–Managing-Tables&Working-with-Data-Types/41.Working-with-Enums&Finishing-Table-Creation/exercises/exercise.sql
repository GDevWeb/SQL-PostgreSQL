-- CREATE TYPE type_role AS ENUM ('Manager', 'Developer', 'Designer', 'QA', 'HR');

-- CREATE Type type_spec AS ENUM ('Javascript', 'Python', 'PHP');

-- Create TABLE IF NOT EXISTS employees (
--   EmployeeID SERIAL PRIMARY KEY,
--   Name varchar(100) NOT NULL, 
--   Role type_role NOT NULL, 
--   HireDate DATE DEFAULT CURRENT_DATE
--   );

-- INSERT INTO employees (Name, Role, HireDate)
-- VALUES
--     ('Bob Smith', 'Manager', '2024-06-15'),
--     ('Catherine Lee', 'QA', '2024-06-20'),
--     ('John Gardner', 'Developer', '2024-06-20')
-- ON CONFLICT (EmployeeID) DO NOTHING;

-- INSERT INTO employees (Name, Role, HireDate)
-- VALUES
--     ('Ryan Reynolds', 'QA', '2024-06-15');

-- SELECT * FROM employees;

-- SELECT * FROM employees WHERE role = 'Developer';

-- ALTER TABLE employees
-- ADD COLUMN Spec type_spec NOT Null DEFAULT 'Javascript';

-- updating the role of :
-- UPDATE employees
-- SET Role = 'Manager'
-- WHERE name = 'Catherine Lee';

-- select one targeted employee :
-- SELECT * FROM employees WHERE name = 'Bob Smith';

-- add new value into an existing enum type
-- ALTER Type type_spec ADD VALUE 'Flutter';
-- SELECT * FROM employees;

-- DROP TABLE employees;

-- Exercises :

-- Exercise 1: Create an Enum and Table
-- CREATE TYPE order_status AS ENUM ('Pending', 'Shipped', 'Delivered', 'Cancelled');

-- CREATE TABLE IF NOT EXISTS orders (
--   orderID SERIAL PRIMARY KEY,
--   CustomerName VARCHAR(100) NOT NULL UNIQUE,
--   Status order_status DEFAULT 'Pending',
--   OrderDate DATE DEFAULT CURRENT_DATE
-- );

-- -- Exercise 2: Insert Data into the orders Table
-- INSERT INTO orders (CustomerName, Status)
-- VALUES
--   ('John Doe', 'Shipped'),
--   ('Jane Smith', 'Pending');

-- Exercise 3: Query the orders Table
SELECT * FROM orders WHERE Status = 'Pending';
SELECT * from orders WHERE customername = 'John Doe';

-- DROP TABLE orders;