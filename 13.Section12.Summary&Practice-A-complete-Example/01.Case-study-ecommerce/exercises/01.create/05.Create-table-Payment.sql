CREATE TYPE type_paymentMethod AS ENUM('Credit Card', 'Paypal', 'Payment');
CREATE TYPE type_paymentStatus AS ENUM('Paid', 'Refused', 'Pending');

CREATE TABLE IF NOT EXISTS Payments(
  PaymentID SERIAL PRIMARY KEY,
  OrderID INT NOT NULL, --fk
  PaymentDate DATE DEFAULT CURRENT_DATE,
  PaymentMethod type_paymentMethod NOT NULL DEFAULT 'Credit Card',
  PaymentAmount DECIMAL(10,2) CHECK(PaymentAmount >=1.99) NOT NULL,
  PaymentStatus type_paymentStatus NOT NULL DEFAULT 'Pending',
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE
);

SELECT * FROM Payments;
