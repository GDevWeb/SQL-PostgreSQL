-- DROP TABLE Customers;
-- DROP TABLE Products;
-- DROP TABLE Orders;

-- CREATE TABLE IF NOT EXISTS Customers(
--   CustomerID SERIAL PRIMARY KEY,
--   CustomerName VARCHAR(100) NOt NULL
-- ); 

-- CREATE TABLE IF NOT EXISTS Products(
--   ProductID SERIAL PRIMARY KEY,
--   ProductName VARCHAR(100) NOT NULL,
--   Category VARCHAR(50),
--   Price DECIMAL(10,2) CHECK (Price > 0)
-- );

-- SELECT * FROM customers;
-- SELECT * FROM products;

-- CREATE TABLE IF NOT EXISTS Orders (
--   OrderID SERIAL PRIMARY KEY,
--   CustomerID INT REFERENCES Customers(CustomerID),
--   ProductID INT REFERENCES Products(ProductID),
--   Quantity INT CHECK (Quantity > 0),
--   OrderDate DATE DEFAULT CURRENT_DATE
-- );

SELECT * FROM Orders;