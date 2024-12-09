-- DROP TABLE products;

CREATE TABLE IF NOT EXISTS products(
  ProductId SERIAL PRIMARY KEY,
  ProductName VARCHAR(100) UNIQUE,
  Quantity INTEGER CHECK (Quantity >= 0),
  PRICE DECIMAL(10,2)
);

INSERT INTO products(ProductName, Quantity, PRICE )
VALUES('keyboard', 99, 29.99);



-- Exercise 2

CREATE TABLE IF NOT EXISTS Measurements(
  MeasurementID SERIAL PRIMARY KEY,
  Temperature REAL,
  Distance DOUBLE PRECISION  
);

SELECT * FROM Measurements;
