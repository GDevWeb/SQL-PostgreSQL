SELECT 
o.OrderID,
c.CustomerName,
p.ProductName,
p.Category,
p.Price,
o.Quantity,
o.OrderDate
FROM
Orders o
JOIN 
Customers c ON o.customerID = c.CustomerID 
JOIN
Products p ON o.ProductID = p.ProductID;
