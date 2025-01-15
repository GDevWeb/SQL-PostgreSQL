/* **Nested Queries** */

-- List products not yet ordered by any customer.


/* List products not yet ordered by any customer */
SELECT
    p.ProductID,
    p.ProductName AS ProductName,
    COUNT(od.ProductID) AS TotalOrders -- Count of orders for each product
FROM 
    Products AS p
LEFT JOIN 
    OrderDetails AS od ON od.ProductID = p.ProductID
GROUP BY 
    p.ProductID, p.ProductName
HAVING 
    COUNT(od.ProductID) = 0 -- Filter products with no orders
ORDER BY 
    p.ProductName ASC; -- Optional: Sort alphabetically
