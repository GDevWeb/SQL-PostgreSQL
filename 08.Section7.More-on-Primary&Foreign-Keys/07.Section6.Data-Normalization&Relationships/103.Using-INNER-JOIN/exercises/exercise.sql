/* 
#### **Task 1: Retrieve Orders with Customer Names**

- Use an **INNER JOIN** to get:
  - Customer names.
  - Order IDs.
  - Order dates.

 */

SELECT 
Customers.customerName,
Orders.orderID,
Orders.OrderDate
FROM
customers

INNER JOIN
Orders
ON
Customers.customerid = Orders.customerid;

/* 
#### **Task 2: Extend the Query**

- Join a third table, `OrderDetails`, to include:
  - Product names.
  - Quantities ordered.
 */

SELECT
c.customerName,
o.orderID,
o.orderDate,
p.productName,
od.quantity
FROM Customers AS c
INNER JOIN
Orders AS o ON c.customerid = o.customerid
INNER JOIN 
OrderDetails AS od on o.orderid = od.orderid
INNER JOIN 
Products AS p ON od.productid = p.productid;

/* 
#### **Task 3: Apply Filters**

- Retrieve only orders placed within the last 7 days.

 */

SELECT
c.customerName,
o.orderID,
o.orderDate,
p.productName,
od.quantity
FROM Customers AS c
INNER JOIN
Orders AS o ON c.customerid = o.customerid
INNER JOIN 
OrderDetails AS od on o.orderid = od.orderid
INNER JOIN 
Products AS p ON od.productid = p.productid
WHERE 
o.orderdate BETWEEN CURRENT_DATE - INTERVAL '7 days' AND CURRENT_DATE;
