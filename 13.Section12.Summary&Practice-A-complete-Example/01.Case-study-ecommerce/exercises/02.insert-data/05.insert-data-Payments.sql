INSERT INTO Payments (OrderID, PaymentDate, PaymentMethod, PaymentAmount, PaymentStatus)
VALUES
(1, '2024-01-16', 'Credit Card', 1200.00, 'Paid'),
(2, '2024-01-17', 'Paypal', 1600.00, 'Paid'),
(3, '2024-01-18', 'Credit Card', 450.00, 'Pending'),
(4, '2024-01-19', 'Credit Card', 300.00, 'Refused'),
(5, '2024-01-20', 'Paypal', 250.00, 'Pending');

SELECT * FROM Payments ;