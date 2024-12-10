-- CREATE TABLE IF NOT EXISTS invoices (
--   InvoiceID SERIAL PRIMARY KEY,
--   Amount DECIMAL(10,2),
--   TaxRate DECIMAL(4,2)
-- );

-- INSERT INTO invoices (Amount, TaxRate)
-- VALUES(1000.50, 7.25);

-- SELECT 
-- Amount,
-- TaxRate,
-- CAST(Amount + (Amount * TaxRate / 100) AS DECIMAL(10,2)) AS totalAmount 
-- FROM invoices;

-- /* 
-- Explanation of Changes
-- Use of CAST:

-- CAST(... AS DECIMAL(10,2)) is used to ensure that the computed totalAmount has two decimal places.
--  */

-- DROP TABLE invoices;

-- exercise 1 : CREATE products table 
CREATE TABLE IF NOT EXISTS products(
  ProductID SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  Price DECIMAL(10,2) CHECK (Price > 0),
  Weight DOUBLE PRECISION
);

-- enum for branding
CREATE TYPE type_brand AS ENUM ('Asrog', 'Asus', 'Corsair', 'Razer', 'NoBrand');

-- ALTER TABLE products
ADD COLUMN Brand type_brand NOT NULL DEFAULT 'NoBrand';

INSERT INTO products (ProductName, Price, Weight, Brand)
VALUES
('Laptop', 999.99, 2.35, 'Asrog'),
('Smartphone', 499.49, 0.35, 'Asrog')
ON CONFLICT (ProductID) DO NOTHING
RETURNING ProductName;

-- SELECT * FROM products;

-- DROP TABLE products;