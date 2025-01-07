--Use EXPLAIN to analyze the query performance.

-- EXPLAIN 
-- SELECT * 
-- FROM products 
-- WHERE price > 500;

--Add an Index:.
-- CREATE INDEX idx_price ON products(price);

--Query With an Index:
EXPLAIN 
SELECT * 
FROM PRODUCTS 
WHERE price > 500;