/* **Advanced Filtering** */

--Find orders where payments are pending.

SELECT
c.FirstName || ' ' || c.LastName as CustomerName,
o.OrderID AS OrderID,
o.OrderDate AS PlacedDate,
o.OrderStatus AS OrderStatus,
p.PaymentStatus AS PaymentStatus
FROM Orders AS O
INNER JOIN Customer as c ON c.CustomerID = o.CustomerID
INNER JOIN Payments as p ON p.OrderId = o.OrderID
WHERE o.OrderStatus = 'Pending' AND o.OrderDate > NOW() - INTERVAL '30 days'
AND o.OrderStatus IS NOT NULL
ORDER BY
o.OrderDate ASC;