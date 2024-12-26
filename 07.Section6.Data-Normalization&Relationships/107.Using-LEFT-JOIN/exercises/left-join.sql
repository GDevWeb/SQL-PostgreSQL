/* Query 1: Retrieve All Customers and Their Orders */
-- SELECT 
-- c.customerName,
-- o.OrderID,
-- o.orderDate
-- FROM
-- customers c 
-- LEFT JOIN
-- orders o ON c.customerid = o.customerid;

/* Query 2: Find Customers Without Orders */
-- SELECT 
-- c.customerName,
-- o.OrderID,
-- o.orderDate
-- FROM
-- customers c 
-- LEFT JOIN
-- orders o ON c.customerid = o.customerid
-- WHERE 
-- o.orderid IS NULL; -- output : no data

/* Query 3: Combine LEFT JOIN with Additional Tables */

SELECT
c.customerName,
o.orderID,
p.productName,
od.quantity
FROM 
customers c 
LEFT JOIN 
orders o ON c.customerid = o.orderid
LEFT JOIN 
orderdetails od ON o.orderid = od.orderid
LEFT JOIN
products p on od.productid = p.productid;

/* Task 4: Filter Data */
SELECT
c.customerName,
o.orderID,
p.productName,
od.quantity
FROM 
customers c 
LEFT JOIN 
orders o ON c.customerid = o.orderid
LEFT JOIN 
orderdetails od ON o.orderid = od.orderid
LEFT JOIN
products p on od.productid = p.productid
WHERE
p.productname = 'Laptop';
