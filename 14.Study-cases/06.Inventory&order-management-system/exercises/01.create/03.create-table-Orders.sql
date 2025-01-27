-- CREATE TYPE order_status as ENUM ('pending', 'shipped', 'delivered');

CREATE TABLE IF NOT EXISTS Orders(
  order_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(100) CHECK(LENGTH(customer_name) >= 3)
  NOT NULL,
  order_date DATE NOT NULL DEFAULT CURRENT_DATE,
  status order_status NOT NULL DEFAULT 'pending'
);

INSERT INTO Orders(customer_name, order_date, status)
VALUES
('John Doe', '2025-01-26', 'shipped');

SELECT * FROM Orders;