-- exercise 1 :
-- CREATE DATABASE test_drop_me;

-- DROP DATABASE IF EXISTS test_drop_me;

-- exercise 2 :
-- CREATE DATABASE products;

-- CREATE TABLE IF NOT EXISTS product(
--   ProductID SERIAL PRIMARY KEY,
--   ProductName VARCHAR(100) NOT NULL
-- );

-- INSERT INTO product (ProductID, ProductName)
-- VALUES (1, 'AMD ryzen 7 3DX')
-- ON CONFLICT (ProductID) DO NOTHING;


-- -- -- Add a new COLUMN price :
-- -- ALTER TABLE product
-- -- ADD COLUMN Price DECIMAL(10,2);


-- -- Update the products / product / price column
-- UPDATE product
-- SET price = 399.99
-- WHERE productName = 'AMD ryzen 7 3DX';

ALTER TABLE product 
ADD COLUMN InStock Boolean DEFAULT TRUE,
ADD COLUMN Quantity INT DEFAULT 99;

SELECT * FROM product;
