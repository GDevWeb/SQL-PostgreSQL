/* - **Aggregations**:*/
--Calculate the total number of orders per customer.

/* 


 */

SELECT 
c.FirstName,
c.LastName,
COUNT(o.OrderID) AS TotalOrders
FROM orders AS o
INNER JOIN customer AS c ON c.CustomerID = o.CustomerID
GROUP BY  
c.CustomerID, 
c.FirstName, 
c.LastName;
