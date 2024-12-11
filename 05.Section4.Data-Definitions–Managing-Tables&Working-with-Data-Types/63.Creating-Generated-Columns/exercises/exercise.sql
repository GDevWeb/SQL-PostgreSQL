-- CREATE TABLE IF NOT EXISTS students(
--   StudentID SERIAL PRIMARY KEY,
--   FirstName varchar(50) NOT NULL,
--   LastName varchar(50) NOT NULL,
--   FULLName varchar(101) GENERATED ALWAYS AS (FirstName || ' ' || LastName) STORED
-- );

-- INSERT INTO students (FirstName, LastName) VALUES ('Alice', 'Johnson');

-- SELECT * FROM students;

--❗
-- DROP TABLE IF EXISTS students;

-- Exercises :
CREATE TABLE IF NOT EXISTS sales(
  ProductName VARCHAR(100) NOT NULL,
  Price DECIMAL(10,2),
  TaxRate DECIMAL(5,2),
  TotalPrice DECIMAL(10,2) GENERATED ALWAYS AS (Price + (Price * TaxRate)) STORED
);

-- INSERT INTO sales (ProductName, Price, TaxRate)
-- VALUES ('Laptop', 1000, 0.15);

SELECT * FROM sales;
--❗
-- DROP TABLE IF EXISTS sales;


