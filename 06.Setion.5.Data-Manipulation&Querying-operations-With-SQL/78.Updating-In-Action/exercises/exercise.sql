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

-- INSERT INTO sales (date_created, date_fulfilled, customer_name, product_name, volume, is_recurring, is_disputed)
-- VALUES
--     ('2024-06-01', '2024-06-05', 'Alice Johnson', 'Laptop', 1500, TRUE, FALSE),
--     ('2024-06-03', '2024-06-06', 'Bob Smith', 'Wireless Mouse', 200, FALSE, FALSE),
--     ('2024-06-05', '2024-06-07', 'Catherine Lee', 'Keyboard', 50, FALSE, TRUE),
--     ('2024-06-07', '2024-06-10', 'David Brown', 'Monitor', 3000, TRUE, TRUE),
--     ('2024-06-08', '2024-06-09', 'Emma Wilson', 'Printer', 750, FALSE, FALSE),
--     ('2024-06-09', NULL, 'Frank Harris', 'Desk Chair', 1200, TRUE, FALSE),
--     ('2024-06-10', '2024-06-14', 'Grace Patel', 'Graphics Card', 5000, FALSE, TRUE),
--     ('2024-06-12', '2024-06-15', 'Hannah Clarke', 'External SSD', 850, FALSE, FALSE),
--     ('2024-06-15', '2024-06-18', 'Isaac Lewis', 'Webcam', 100, FALSE, FALSE),
--     ('2024-06-17', '2024-06-19', 'Jane Doe', 'Headphones', 2500, TRUE, FALSE);

SELECT * FROM sales;

-- Updating DATA
-- 1. Update the date_fulfilled for Sales Without a Fulfillment Date
-- UPDATE sales
-- SET date_fulfilled = CURRENT_DATE
-- WHERE date_fulfilled ISNULL;

-- 2. Mark Large Sales as Recurring
UPDATE sales
SET is_recurring = True
WHERE volume > 100;

-- 3. Apply a Discount to High-Volume Sales
UPDATE sales
SET volume  = volume * 0.9
WHERE volume > 2000;


-- -- 4. Update Product Names for Specific Customers
-- UPDATE sales
-- SET product_name = 'Wireless Headphones'
-- WHERE customer_name = 'Jane Doe' AND product_name = 'Headphones';

-- --  Verify Updates with RETURNING
-- UPDATE sales
-- SET is_disputed = TRUE
-- WHERE volume > 5000
-- RETURNING *; 

--  Practice Tasks
-- Update Fulfillment Date:
-- UPDATE sales
-- SET date_fulfilled = (date_created + 5)
-- WHERE date_fulfilled IS NULL;

-- 2.Flag High-Volume Sales:
UPDATE sales
SET is_recurring  = TRUE,
is_disputed = TRUE
WHERE volume > 3000
RETURNING *;

SELECT * FROM sales;
