/* **Joins**: */

--List all orders along with customer names and products ordered.

SELECT
c.FirstName || ' ' ||c.LastName as FullName,
o.OrderID as OrderID,
od.ProductID as ProductID,
p.ProductName as ProductName
FROM 
Customer AS c
INNER JOIN 
Orders AS o ON o.CustomerID = c.customerID
INNER JOIN 
OrderDetails AS od ON od.OrderID = o.OrderID
INNER JOIN 
products AS p ON p.ProductID = od.productID
ORDER BY 
FullName, OrderID;