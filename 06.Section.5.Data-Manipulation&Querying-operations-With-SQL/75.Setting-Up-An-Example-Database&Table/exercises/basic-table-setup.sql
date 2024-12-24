--Create DB
-- CREATE DATABASE sales_db;

-- Switch DB :
-- \c sales_db;

CREATE TABLE IF NOT EXISTS sales(
  id SERIAL PRIMARY KEY,
  date_created DATE NOT NULL,
  date_fulfilled DATE,
  customer_name VARCHAR(100) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  volume INTEGER CHECK(volume >= 0) NOT NULL,
  is_recurring BOOLEAN DEFAULT FALSE,
  is_disputed BOOLEAN DEFAULT FALSE
);