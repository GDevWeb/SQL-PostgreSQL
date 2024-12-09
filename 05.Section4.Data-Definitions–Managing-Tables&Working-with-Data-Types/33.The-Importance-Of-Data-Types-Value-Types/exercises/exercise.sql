-- CREATE TABLE products(
--   ProductID SERIAL PRIMARY KEY,
--   ProductName VARCHAR(100) NOT NULL,
--   Price DECIMAL(10,2),
--   InStock BOOLEAN DEFAULT TRUE
-- );

-- INSERT INTO products (ProductName, Price, InStock)
-- VALUES ('LAPTOP', 79.99, TRUE)
-- ON CONFLICT (ProductID) DO NOTHING;


-- ALTER TABLE products
-- ADD COLUMN Quantity INT DEFAULT 9;


-- Remove all product form Table without destruct the structure
TRUNCATE TABLE products;

-- Drop Table - remove all rows from table without deleting its structure

SELECT * FROM products; 
