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

-- SELECT
-- c.customerName,
-- o.orderID,
-- p.productName,
-- od.quantity
-- FROM 
-- customers c 
-- LEFT JOIN 
-- orders o ON c.customerid = o.orderid
-- LEFT JOIN 
-- orderdetails od ON o.orderid = od.orderid
-- LEFT JOIN
-- products p on od.productid = p.productid;

/* Task 4: Filter Data */
-- SELECT
-- c.customerName,
-- o.orderID,
-- p.productName,
-- od.quantity
-- FROM 
-- customers c 
-- LEFT JOIN 
-- orders o ON c.customerid = o.orderid
-- LEFT JOIN 
-- orderdetails od ON o.orderid = od.orderid
-- LEFT JOIN
-- products p on od.productid = p.productid
-- WHERE
-- p.productname = 'Laptop';

/* 
### 🛠️ **Practice Tasks**

1. Retrieve all products and their orders, even if a product hasn’t been ordered yet.
 */


 /* 
 2. Identify customers who have placed orders with a total quantity of more than 1.
  */

SELECT
o.orderid,
c.customerName,
p.productName,
od.quantity
FROM
customers c 
LEFT JOIN 
orderdetails od ON c.customerid = od.orderid
LEFT JOIN
products p ON c.customerid = od.orderdetailid
LEFT JOIN
orders o ON c.customerid = o.customerid
WHERE quantity > 1;

/* 
3. Show all orders and include products with no associated details.
 */

