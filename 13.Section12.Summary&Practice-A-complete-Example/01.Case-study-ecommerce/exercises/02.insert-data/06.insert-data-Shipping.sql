INSERT INTO Shipping (OrderID, ShippingDate, ShippingMethod, ShippingStatus)
VALUES
(1, '2024-01-16', 'Shipping Home', 'Delivered'),
(2, '2024-01-17', 'Shipping Relay', 'Delivered'),
(3, '2024-01-18', 'Shipping Home', 'In delivering'),
(4, '2024-01-19', 'Shipping Case', 'Preparation'),
(5, '2024-01-20', 'Shipping Home', 'Preparation');

SELECT * FROM Shipping;