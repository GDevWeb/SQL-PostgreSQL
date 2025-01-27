/* queries */

--6.Find the top 5 most-ordered products by quantity

SELECT
p.product_name,
od.product_id,
SUM(od.product_id) as total_ordered
 FROM OrderDetails AS od
LEFT JOIN
products as p on od.product_id = p.product_id
 GROUP BY
 p.product_name,
 od.product_id
 ORDER BY 
 total_ordered 
 DESC LIMIT 5;


/* Create a view */
CREATE VIEW most_ordered_product AS 
SELECT
p.product_name,
od.product_id,
SUM(od.product_id) as total_ordered
 FROM OrderDetails AS od
LEFT JOIN
products as p on od.product_id = p.product_id
 GROUP BY
 p.product_name,
 od.product_id
 ORDER BY 
 total_ordered 
 DESC LIMIT 5;

 SELECT most_ordered_product;
