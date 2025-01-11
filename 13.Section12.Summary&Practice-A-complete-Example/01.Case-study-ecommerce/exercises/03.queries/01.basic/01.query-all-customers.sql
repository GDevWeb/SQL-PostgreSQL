--Retrieve all customer orders.

SELECT 
c.FirstName,
c.LastName,
co.orderid,
co.orderdate,
co.orderstatus
FROM Customer AS c
INNER JOIN orders AS co ON c.customerid = co.customerid;