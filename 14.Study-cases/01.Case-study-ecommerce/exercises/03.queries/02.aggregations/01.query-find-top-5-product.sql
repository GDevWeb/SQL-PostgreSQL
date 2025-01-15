-- ***Aggregations**:

--Find the top 5 best-selling products.

SELECT
p.productID,
p.productName,
od.orderID,
od.quantity
FROM products as p
INNER JOIN orderDetails as od ON od.productid = p.productid
ORDER BY quantity DESC; 