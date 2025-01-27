/* Queries */

--5.Identify products that need restocking.

CREATE or REPLACE VIEW product_in_low_stock AS
SELECT * FROM products
WHERE stock_quantity < 20
ORDER BY stock_quantity ASC;

SELECT ? FROM product_in_low_stock;