/* ****Practice Tasks**** */

-- 1.High-Volume, Non-Disputed Sales:
-- Find sales where the volume is greater than 1500 and the sale is not disputed.

SELECT product_name, volume, is_disputed
FROM sales 
WHERE VOLUME > 1500 
AND
is_disputed = FALSE;

-- 2.Recurring or Disputed Sales:
-- Find sales that are either recurring or disputed.
SELECT product_name, volume, is_recurring, is_disputed
FROM sales
WHERE is_recurring = TRUE
OR
is_disputed = TRUE;

-- 3.Filter by Multiple Conditions:
-- Retrieve sales where the volume is between 500 and 2000 and the product is not recurring.
SELECT product_name, volume, is_recurring
FROM sales
WHERE volume > 500
AND
is_recurring = FALSE;

-- 4.Complex Condition:
-- Find sales where the volume is greater than 1000 and the customer_name starts with “A” or “D”.
SELECT customer_name, product_name, volume
FROM sales
WHERE 
volume > 1000
AND
customer_name LIKE 'A%'
OR
customer_name LIKE 'D%';