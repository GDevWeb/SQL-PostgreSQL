/* 
### 🧩 **Practice Tasks**

#### **Task 1: Basic INNER JOIN**

- Write a query to retrieve all orders, including:
  - The customer's name.
  - The order date.


#### **Task 2: Joining Multiple Tables**

- Extend the query to include:
  - The product name.
  - The quantity ordered.
  - The total price (calculated dynamically).

#### **Task 3: Filter Joined Data**
- Add a filter to retrieve only orders placed by a specific customer (e.g., "Alice Smith").

 */


-- SELECT 
-- c.CustomerName,
-- o.OrderDate
-- FROM Customers AS c 
-- INNER JOIN 
-- Orders AS o ON c.Customerid = o.Customerid;


SELECT
c.CustomerName,
o.OrderDate,
p.ProductName,
od.Quantity,
p.price,
(od.quantity * p.price) as TotalPrice
FROM customers AS c   
INNER JOIN 
Orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN
OrderDetails AS od ON o.OrderID = od.OrderID
INNER JOIN
Products AS p ON od.ProductID = p.ProductID;

SELECT 
c.CustomerName
FROM customers AS c  
INNER JOIN 
orders AS o ON c.customerid = o.orderid
WHERE customername = 'Alice Smith';