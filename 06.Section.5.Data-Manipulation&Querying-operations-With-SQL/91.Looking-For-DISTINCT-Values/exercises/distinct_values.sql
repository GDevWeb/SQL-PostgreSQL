/* Module 91: Looking for DISTINCT Values*/

/*  Practice Tasks */
-- 1.Unique Customers:
-- Retrieve a list of all unique customer_name values.
SELECT DISTINCT customer_name
FROM sales;

/* 2.Unique Products:
Retrieve a list of all unique product_name values. 
*/
SELECT DISTINCT product_name
FROM sales;

/* 
3.Unique Customer-Product Combinations:
Retrieve unique combinations of customer_name and product_name.
 */

 SELECT DISTINCT 
 customer_name,
 product_name
 FROM sales;

/*  4.Unique Products Sorted:
    Retrieve unique product names sorted in descending order. 
*/
SELECT DISTINCT
product_name
FROM sales
ORDER BY product_name DESC;

/* 5.Unique Volumes:
Retrieve all unique volume values. 
*/
SELECT DISTINCT
volume,
product_name
FROM sales
ORDER BY volume ASC;