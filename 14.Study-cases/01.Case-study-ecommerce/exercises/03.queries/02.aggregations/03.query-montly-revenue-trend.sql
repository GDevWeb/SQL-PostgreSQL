/* 
**Aggregations**:
 */

--Determine monthly revenue trends.

SELECT 
DATE_TRUNC('month', o.OrderDate) As Month,
SUM(od.TotalPrice) AS TotalRevenue
FROM
orders AS o 
INNER JOIN
orderdetails AS od 
ON
o.orderID = od.orderid
GROUP BY
MONTH
ORDER BY
MONTH;