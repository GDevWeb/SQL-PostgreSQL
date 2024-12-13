/* ****Module 86: Filtering Text Values**** */

-- Practice Tasks
-- 1.Find Specific Customers:
-- Retrieve all sales where the customer_name is “Jane Doe”.
SELECT customer_name,  product_name, volume
FROM sales
WHERE customer_name = 'Jane Doe';

-- 2.Find Products Containing “Phone”:
-- Find all sales where the product_name contains the word “Phone”.
SELECT product_name
FROM sales
WHERE product_name ILIKE '%Phone%';

-- 3.Find Names Starting with “D”:
-- Retrieve sales where the customer_name starts with the letter “D”.
SELECT customer_name
FROM sales
WHERE customer_name ILIKE 'D%';

-- 4.Case-Insensitive Search:
-- Find sales where the customer_name contains “smith” (case-insensitive).

SELECT customer_name
FROM sales
WHERE customer_name ILIKE '%smith%';

-- 5.Filter by Pattern:
-- Retrieve sales where the product_name ends with “er”.

SELECT product_name
FROM sales
WHERE product_name ILIKE '%er';