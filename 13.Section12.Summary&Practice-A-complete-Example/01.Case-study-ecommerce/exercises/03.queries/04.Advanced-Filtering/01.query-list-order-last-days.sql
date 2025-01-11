/* - **Advanced Filtering**:*/

-- List all orders placed in the last 30 days.

SELECT
c.CustomerID,
c.FirstName || ' ' || c.LastName as CustomerName,
o.OrderID as OrderID,
o.OrderDate as PlacedDate 
from orders as o
INNER JOIN 
Customer AS c ON c.CustomerID = o.CustomerID
WHERE OrderDate BETWEEN NOW() - INTERVAL '30 dayS' AND NOW() 
AND OrderStatus IS NOT NULL
ORDER BY 
OrderDate ASC;
