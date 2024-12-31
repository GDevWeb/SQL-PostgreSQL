CREATE TYPE payment_type AS ENUM('cash', 'Credit Card');

CREATE TABLE IF NOT EXISTS PaymentMethod(
  PaymentMethodID SERIAL PRIMARY KEY,
  PaymentType payment_type NOT NULL
);