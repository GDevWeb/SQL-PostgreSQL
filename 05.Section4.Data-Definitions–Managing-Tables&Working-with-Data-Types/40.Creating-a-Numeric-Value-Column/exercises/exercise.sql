-- Exercise 1: Create a products Table
CREATE TABLE IF NOT EXISTS products(
  ProductID SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  Price DECIMAL(10,2) CHECK (Price > 0),
  StockQuantity INTEGER CHECK (StockQuantity > 0)
  );



-- -- Exercise 2: Insert Data into the products Table

-- INSERT INTO products(ProductName, Price, StockQuantity)
-- VALUES 
-- ('Laptop', 399.99, 20),
-- ('Keyboard', 99.99, 2),
-- ('Mouse', 9.99, 10);


-- SELECT * FROM products;

-- DROP TABLE products;

-- Exercise 3: Create a transactions Table
-- CREATE TABLE IF NOT EXISTS transactions(
-- TransactionID SERIAL PRIMARY KEY,
-- Amount NUMERIC(12,2) CHECK (Amount > 0),
-- TaxRate DECIMAL(4,2) CHECK (TaxRate > 0 AND  TaxRate < 20)
-- );

-- SELECT * FROM transactions;

-- DROP TABLE transactions;