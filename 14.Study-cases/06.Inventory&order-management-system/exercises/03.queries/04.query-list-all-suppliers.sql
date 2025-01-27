/* Queries */

--4.List all suppliers for a specific product.

SELECT 
s.supplier_name,
p.product_name
FROM productsuppliers As ps
LEFT JOIN
suppliers as s ON ps.supplier_id = s.supplier_id
LEFT JOIN
products as p on ps.product_id = p.product_id
WHERE ps.product_id = 11;