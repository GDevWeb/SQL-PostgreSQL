-- CREATE TABLE products (
--   ProductID SERIAL PRIMARY KEY,
--   ProductName VARCHAR(100) NOT NULL,
--   Price DECIMAL(10,1) CHECK (PRICE > 0)
-- );


-- ALTER TABLE products
-- ADD COLUMN Stock INT DEFAULT 0;

-- SELECT * FROM products

-- Delete DB
DROP TABLE products;