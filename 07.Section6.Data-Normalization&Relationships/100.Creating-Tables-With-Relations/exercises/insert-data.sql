-- INSERT INTO Customers(CustomerName)
-- VALUES
-- ('Alice Smith'),
-- ('Bob Johnson');

-- SELECT * FROM customers;

-- INSERT INTO Products(ProductName, Price)
-- VALUES
-- ('Laptop', 1200.00),
-- ('SmartPhone', 800.00),
-- ('Keyboard', 50.00);

-- SELECT * FROM Products;

-- INSERT INTO Orders
-- VALUES
-- (1,1,'2024-12-20'),
-- (2,2,'2024-12-21');

-- SELECT * FROM Orders;

-- INSERT INTO OrderDetails(OrderID, ProductID, Quantity)
-- VALUES
-- (1, 1, 1),
-- (1, 3, 2),
-- (2, 2, 1);

-- SELECT * FROM OrderDetails;

/* Task 3: Query Relationships */
-- 3.1.Retrieve all orders with customer names and product details.
SELECT 
od.OrderDetailID,
od.OrderID,
c.CustomerName,
od.ProductID,
p.ProductName,
od.Quantity,
(od.Quantity * p.Price) AS TotalPrice
FROM
OrderDetails od
JOIN
products p ON od.ProductID = p.ProductID
JOIN
Orders o ON od.OrderID = o.OrderID
JOIN 
    Customers c ON o.CustomerID = c.CustomerID;

/* Calculate the total amount spent by each customer. */

SELECT 
    c.CustomerName,
    SUM(od.Quantity * p.Price) AS TotalAmountSpent
FROM 
    OrderDetails od
JOIN 
    Products p ON od.ProductID = p.ProductID
JOIN 
    Orders o ON od.OrderID = o.OrderID
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
GROUP BY 
    c.CustomerName
ORDER BY 
    TotalAmountSpent DESC;
