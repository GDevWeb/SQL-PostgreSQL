CREATE TABLE IF NOT EXISTS payments (
  PaymentID   SERIAL PRIMARY KEY,
  Amount DECIMAL(10,2),
  PaymentDate DATE,
  IsConfirmed BOOLEAN DEFAULT FALSE
);


INSERT INTO payments (Amount, PaymentDate, ISConfirmed)
VALUES (150.75, '2024-12-09', TRUE);

SELECT * FROM payments;