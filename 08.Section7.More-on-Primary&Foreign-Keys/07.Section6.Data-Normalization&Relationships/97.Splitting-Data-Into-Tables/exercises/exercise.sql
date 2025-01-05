-- CREATE DATABASE normalization;

-- Switch to the newly created database (execute this if in a database console)
-- \c normalization


CREATE TABLE IF NOT EXISTS customers(
  CustomerID SERIAL PRIMARY KEY,
  CustomerName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS products(
  ProductID SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) NOT Null,
  Price INT CHECK(price > 0) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders(
  OrderID SERIAL PRIMARY KEY,
  CustomerID INT NOT NULL,
  ProductID INT NOT NULL,
  OrderDate DATE DEFAULT CURRENT_DATE NOT NULL,
  Quantity INT CHECK(quantity > 0) NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
  FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);


-- Data :

-- INSERT INTO customers (CustomerName) VALUES
-- ('Alice Smith'),
-- ('Bob Johnson'),
-- ('Charlie Brown'),
-- ('Diana Prince'),
-- ('Evan Davis');

-- INSERT INTO products (ProductName, Price) VALUES
-- ('Laptop', 1200),
-- ('Smartphone', 800),
-- ('Headphones', 150),
-- ('Monitor', 300),
-- ('Keyboard', 50);

-- INSERT INTO orders (CustomerID, ProductID, OrderDate, Quantity) VALUES
-- (1, 1, '2024-12-20', 1),  -- Alice ordered 1 Laptop
-- (2, 2, '2024-12-21', 2),  -- Bob ordered 2 Smartphones
-- (3, 3, '2024-12-22', 3),  -- Charlie ordered 3 Headphones
-- (4, 4, '2024-12-23', 1),  -- Diana ordered 1 Monitor
-- (5, 5, '2024-12-24', 5);  -- Evan ordered 5 Keyboards

SELECT * FROM orders;