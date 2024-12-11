-- CREATE TYPE type_category AS ENUM ('Product', 'Beef', 'Chicken', 'Seafood', 'Vegetable', 'Fruit', 'Cheese','Milk', 'Dairy', 'Cereals', 'Spice');

CREATE TABLE IF NOT EXISTS products(
  ProductId SERIAL PRIMARY KEY,
  Brand VARCHAR(100) NOT NULL,
  ProductName VARCHAR(100) NOT NULL UNIQUE,
  ProductDescription TEXT NOT NULL DEFAULT 'product description',
  Category type_category DEFAULT 'Product',
  -- Price DECIMAL(3,2) CHECK(Price > 0.99) NOT NULL; //Good practice
  Price DECIMAL(6,2)
);

-- INSERT INTO products(Brand, ProductName, ProductDescription,Category, Price)
--   VALUES
--   ('Matine', 'Eggs', 'Pack * 12', 'Product', 3.99),
--   ('U', 'Beef Buffle', '1kg', 'Beef', 8.99),
--   ('U', 'Salmon', '0.5kg', 'Product', NULL);

-- check 
  -- SELECT * FROM products;

  -- Exercise 1: Identify NULL Prices
-- SELECT * FROM products
-- WHERE price IS NULL;

-- Exercise 2: Replace NULL Prices with Default

-- -- 1st method
-- UPDATE products
-- SET Price = 10.00
-- WHERE Price ISNULL;

-- -- 2nd method COALESCE
-- SELECT ProductName, COALESCE(Price, 10.00) AS PriceWithDefault FROM products;


-- Exercise 3: Treat 0 as NULL
SELECT 
  ProductName, 
  NULLIF(Price, 0) AS Price
FROM products;

UPDATE products
SET price = NULL
WHERE price = 0;

SELECT * FROM products;

-- DROP TABLE products;