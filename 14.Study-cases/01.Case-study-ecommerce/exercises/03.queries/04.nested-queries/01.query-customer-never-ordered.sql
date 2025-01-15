/* **Nested Queries** */

-- Find customers who have never placed an order.


/* Find customers who have never placed an order */
SELECT
    c.CustomerID,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM 
    Customer AS c
LEFT JOIN 
    Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName
HAVING 
    COUNT(o.OrderID) = 0;
