--Find products with low stock levels (`Quantity < 50`).
SELECT 
ProductName,
Category,
Quantity,
Price,
Stock
FROM Products
WHERE Quantity < 50
ORDER BY Stock;