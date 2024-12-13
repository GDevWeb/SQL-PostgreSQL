/* Module 92: Subqueries & Views */

/* ****Practice Tasks**** */

/* 
1.Subquery Practice:
Write a query to find all sales where the volume exceeds the average volume for the same product_name.
 */
-- SELECT *
-- FROM sales
-- WHERE volume > (SELECT AVG(volume) FROM sales);

/* 
2.Multiple-Row Subquery:
Retrieve sales for customers who have bought “Laptop”.
 */

-- SELECT DISTINCT
-- customer_name,
-- product_name
-- FROM sales
-- WHERE product_name = 'Laptop';

/* 
3.Create a View:
Create a view called recent_sales that includes sales made in the last 7 days.
*/

-- CREATE VIEW recent_sales AS
-- SELECT 
-- product_name,
-- volume,
-- date_created
-- FROM 
--     sales
-- WHERE 
--     date_created >= CURRENT_DATE - INTERVAL '7 days';

/* 
4.Query a View:
Select all data from the recent_sales view.
 */
-- SELECT * FROM recent_sales;

/* 
5.Drop a View:
Drop the recent_sales view.
 */
DROP VIEW recent_sales;