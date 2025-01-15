INSERT INTO OrderDetails (OrderID, ProductID, Quantity, TotalPrice)
VALUES
(1, 1, 1, 1200.00), -- Alice bought 1 Laptop
(2, 2, 2, 1600.00), -- Bob bought 2 Smartphones
(3, 3, 3, 450.00), -- Charlie bought 3 Headphones
(4, 4, 1, 300.00), -- Diana bought 1 Monitor
(5, 5, 5, 250.00); -- Eve bought 5 Keyboards

SELECT * FROM OrderDetails;