/* ****Practice Tasks**** */
-- 1.Find Sales with Low Volume:
-- Retrieve all sales where the volume is less than 500.
SELECT volume, product_name
FROM sales
WHERE volume > 500;

-- 2.Find Sales Fulfilled After Creation Date:
-- Find sales where date_fulfilled is after date_created.
SELECT product_name, date_fulfilled, date_created, volume
FROM sales
WHERE date_fulfilled > date_created
ORDER BY volume DESC;

-- 3.Find Sales with Volume Between 500 and 2000:
-- Use the BETWEEN operator to filter sales by volume in this range.
SELECT product_name, volume
FROM sales
WHERE volume BETWEEN 500 AND 2000
ORDER BY volume DESC;

-- 4.Find Sales by Customers Whose Names Start with “J”:
-- Use the LIKE operator to filter customers whose names start with “J”.
SELECT customer_name
FROM sales
WHERE customer_name LIKE 'J%';

-- 5.Find Recurring or Disputed Sales:
-- Retrieve sales that are either recurring or disputed.
SELECT product_name, is_recurring, is_disputed
FROM sales
WHERE is_recurring = TRUE
OR
is_disputed = TRUE
ORDER BY product_name ASC;