CREATE TABLE IF NOT EXISTS products(
  ProductID SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  Category VARCHAR(50) NOT NULL,
  Price DECIMAL(10,2) CHECK(price > 0),
  Description TEXT
);

SELECT * FROM products;