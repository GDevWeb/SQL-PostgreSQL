-- -- INSERT DATA INTO CUSTOMERS
-- INSERT INTO Customers(CustomerName) 
-- VALUES
-- ('Jane Doe'),
-- ('Johny Doeson');

-- -- INSERT INTO PRODUCTS
-- INSERT INTO Products(ProductName, Category, Price) 
-- VALUES
-- ('Laptop', 'Electronics', 1200.00),
-- ('Smartphone', 'Electronics', 800.00),
-- ('Keyboard', 'Accessories', 50.00);

-- SELECT * FROM customers;
-- SELECT * FROM products;

-- -- Insert into Orders
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(1, 3, 3, '2024-01-03');

SELECT * FROM Orders;