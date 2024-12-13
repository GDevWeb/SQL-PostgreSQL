/* ****Where**** */
-- SELECT * FROM sales
-- WHERE product_name = 'Webcam';


--  4.Filter with < (Less Than)
-- SELECT * FROM sales
-- WHERE volume > 1000;

-- 5. Filter with >= (Greater Than or Equal To)
-- SELECT * FROM sales 
-- WHERE volume < 500;

-- 6.Filter with <= (Less Than or Equal To)
-- SELECT * FROM sales
-- WHERE volume <= 500;

-- Combining Conditions with AND, OR, and NOT

-- 1.AND :
-- SELECT * FROM sales
-- WHERE volume > 1000 AND is_recurring = TRUE;

-- 2.OR :
-- SELECT * FROM sales
-- WHERE volume > 2000 OR is_disputed = TRUE;

-- 3. Using NOT
-- SELECT * FROM sales
-- WHERE NOT is_disputed;

-- Additional Variations
-- 1.IN
-- SELECT * FROM sales
-- WHERE product_name IN ('Laptop', 'Monitor', 'Keyboard');

-- 2. Using BETWEEN
-- SELECT * FROM sales
-- WHERE volume BETWEEN 500 AND 2000;

-- 3. Using LIKE for Pattern Matching
-- SELECT * FROM sales
-- WHERE customer_name LIKE 'J%';

-- 4. Using IS NULL and IS NOT NULL
-- SELECT * FROM sales
-- WHERE date_fulfilled IS NULL;

/* ****Practice tasks**** */
-- 1. **Find High-Volume Sales**:  
-- Retrieve all sales where the volume is greater than 2000.
-- SELECT volume, product_name
-- FROM sales
-- WHERE volume > 2000;

-- 2.Find Sales by Specific Customers:
-- Retrieve sales where the customer_name is either “Alice Johnson” or “Bob Smith”.
-- SELECT customer_name, volume, product_name
-- FROM sales
-- WHERE customer_name = 'Alice Johnson'
-- OR
-- customer_name = 'Bob Smith';

-- 4.Find Out-of-Stock Sales:
-- Retrieve sales where volume is 0.SELECT 
-- SELECT product_name, volume
-- FROM sales
-- WHERE volume = 0;

-- 5.Pattern Matching:
-- Find customers whose names start with the letter “E”.
SELECT customer_name
FROM sales
WHERE customer_name LIKE 'E%';