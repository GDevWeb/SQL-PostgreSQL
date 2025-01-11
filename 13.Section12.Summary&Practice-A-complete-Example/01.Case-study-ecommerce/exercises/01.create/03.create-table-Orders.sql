-- CREATE TYPE type_orderStatus AS ENUM('Pending', 'FulFilled', 'Rejected');

CREATE TABLE IF NOT EXISTS Orders(
  OrderID SERIAL PRIMARY KEY,
  CustomerID INT NOT NULL, --fk
  OrderDate DATE DEFAULT CURRENT_DATE,
  OrderStatus type_orderStatus DEFAULT 'Pending',
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE
);

SELECT * FROM Orders;