/* ****Module 89: Introducing ORDER BY & LIMIT**** */

/*  Practice Tasks */

-- 1.Get Top 3 High-Volume Sales:
-- Retrieve the top 3 sales with the highest volume.
-- SELECT 
-- product_name,
-- volume
-- FROM sales
-- ORDER BY volume DESC LIMIT 3;

-- 2.Get the 5 Most Recent Customers:
-- Retrieve the 5 most recently added customers sorted by date_created.
-- SELECT
-- customer_name,
-- date_created
-- FROM sales
-- ORDER BY date_created DESC LIMIT 5;

-- 3.Get the 2 Least Expensive Products:
-- Retrieve the 2 products with the lowest volume.
SELECT 
product_name,
volume
from sales
ORDER BY volume ASC LIMIT 2;

-- 4.List the First 4 Orders Sorted by Customer Name:
-- Retrieve the first 4 orders sorted alphabetically by customer_name.
SELECT
customer_name,
product_name,
volume
FROM sales
ORDER BY customer_name ASC 
LIMIT 4;
