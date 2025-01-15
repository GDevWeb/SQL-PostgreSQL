/* **Joins** */

--Retrieve shipping details for FulFilled orders.

SELECT
o.OrderStatus AS OrderStatus,
o.OrderDate AS OrderPlacedDate,
s.ShippingDate AS DateShipped
FROM orders o
INNER JOIN
Shipping AS s ON s.OrderID = o.OrderID
WHERE o.OrderStatus = 'FulFilled' AND s.ShippingDate IS NOT NULL
ORDER BY 
s.ShippingDate ASC;
