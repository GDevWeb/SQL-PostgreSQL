-- Run a Basic Query:
-- EXPLAIN SELECT * FROM products WHERE Price > 500;

-- Create an Index:
-- CREATE INDEX idx_price ON products(Price);

-- Re-run the Query:
-- EXPLAIN (FORMAT JSON) SELECT * FROM products WHERE Price > 500;

--Use EXPLAIN ANALYZE:
-- EXPLAIN ANALYZE SELECT * FROM products WHERE Price > 500;

-- Complex Query with Index:
-- CREATE INDEX idx_category_price ON products(Category, Price);

--Query for products in the Electronics category priced above $500.
EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics' AND Price > 500;