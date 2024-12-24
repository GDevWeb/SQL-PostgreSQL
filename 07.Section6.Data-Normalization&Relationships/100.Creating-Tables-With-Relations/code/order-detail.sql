-- DROP TABLE customers;
-- DROP TABLE products;
-- DROP TABLE orders;

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderDate DATE DEFAULT CURRENT_DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT CHECK (Quantity > 0)
);

-- total price query

SELECT 
od.OrderDetailID,
od.OrderID,
od.ProductID,
p.ProductName,
od.Quantity,
(od.Quantity * p.Price) AS TotalPrice
FROM
OrderDetails od
JOIN
products p ON od.ProductID = p.ProductID;
