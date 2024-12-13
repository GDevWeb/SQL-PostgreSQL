/* Selecting Data */

-- 1.Basics - SELECT all *
-- SELECT * FROM sales;

-- 2.Selecting specific column :
-- SELECT customer_name, product_name FROM sales

-- 3.Using the WHERE Clause to Filter Data
-- SELECT * FROM sales
-- WHERE volume > 800;

-- Combining Conditions with AND / OR
-- AND : 
-- SELECT * FROM sales
-- WHERE volume > 1000 AND is_recurring = TRUE;

-- 5 OR :
-- SELECT * FROM sales
-- WHERE volume > 1000 OR is_recurring = TRUE;

--  Sorting Data with ORDER BY
-- DESC +/-:
-- SELECT volume, product_name
-- FROM sales
-- ORDER BY volume DESC;

-- ASC -/+:
-- SELECT volume, product_name
-- FROM sales
-- ORDER BY volume ASC;

-- Using LIMIT to Restrict Results
-- GET TOP 3
-- SELECT volume, product_name
-- FROM sales
-- ORDER BY volume DESC
-- LIMIT 3;

/******Practice Tasks ******/

-- 1.Select All Data:
-- Retrieve all columns from the sales table.
-- SELECT * FROM sales;

-- 2.Select Specific Columns:
-- Retrieve only customer_name and date_created from the sales table.
-- SELECT customer_name, date_created
-- FROM sales;

-- 3.Filter Sales by Volume:
-- Retrieve all sales where the volume is greater than 500.
-- SELECT volume, product_name
-- FROM sales
-- WHERE volume > 500
-- ORDER BY volume DESC;

-- 4.Filter Recurring or Disputed Sales:
-- Retrieve sales that are either recurring or disputed.
-- SELECT * FROM sales
-- WHERE 
-- is_recurring = TRUE
-- AND
-- is_disputed = TRUE;

-- 5.Sort by Date Created:
-- Retrieve all sales sorted by date_created in ascending order.
-- SELECT date_created, product_name
-- FROM sales 
-- ORDER BY date_created ASC;

-- 5.Limit Results:
-- Retrieve the top 5 most recent sales.
SELECT * FROM sales
ORDER BY volume ASC
LIMIT 5;