/* 
Practice Tasks
 */

/* 1.Add a new customer and their orders to the database.*/
--  INSERT INTO customers(CustomerName)
--  VALUES ('GD@evWeb');

--  SELECT * FROM customers;

/* 2.Add a new product and link it to existing orders.*/

-- INSERT INTO products(ProductName, Category, Price)
-- VALUES ('Notepad Xiaomi 19+', 'Electronics', 129);

-- SELECT * FROM products;

-- INSERT INTO orders(CustomerID, ProductID, Quantity, OrderDate)
-- VALUES 
-- (3,4,1, '2024-12-24');

-- SELECT * FROM Orders;

/* 
3.Write a query to retrieve:
  The total amount spent by each customer.
  Products ordered more than once.
 */

-- SELECT 
-- o.OrderID,
-- c.CustomerName,
-- p.ProductName,
-- p.Category,
-- p.Price,
-- o.Quantity,
-- o.OrderDate
-- FROM
-- Orders o
-- JOIN 
-- Customers c ON o.customerID = c.CustomerID 
-- JOIN
-- Products p ON o.ProductID = p.ProductID;

-- Total Amount Spent by Each Customer
SELECT 
    c.CustomerName,
    SUM(p.Price * o.Quantity) AS TotalAmountSpent
FROM
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    Products p ON o.ProductID = p.ProductID
GROUP BY 
    c.CustomerName
ORDER BY 
    TotalAmountSpent DESC;

-- Products Ordered More Than Once
SELECT 
p.ProductName
SUM(o.Quantity) AS TotalQuantity
FROM
Orders o
JOIN
Products p ON o.ProductID = p.ProductID 
GROUP BY
p.productName
HAVING
SUM(o.Quantity) > 1
ORDER BY DESC;