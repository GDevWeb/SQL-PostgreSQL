/* Queries */

--8.Get the total number of products supplied by each supplier.

SELECT
s.supplier_name,
COUNT(ps.product_id) as total_products_supplied
FROM 
    Suppliers AS s
LEFT JOIN 
    ProductSuppliers AS ps ON s.supplier_id = ps.supplier_id
GROUP BY 
    s.supplier_name
ORDER BY 
    total_products_supplied DESC;