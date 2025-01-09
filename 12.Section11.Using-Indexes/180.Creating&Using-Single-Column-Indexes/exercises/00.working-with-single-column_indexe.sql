--Working with Single-Column Indexes
-- 1.Create a Single-Column Index:
-- CREATE INDEX idx_category ON products(Category);

-- 2. Query Without the Index:
-- EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics'; --PT: 1.241ms| ET:0.038ms

-- 3. Query With the Index:
-- EXPLAIN ANALYZE SELECT * FROM products WHERE Category = 'Electronics';

-- 4.Experiment with Range Queries:
-- CREATE INDEX idx_price ON products(Price);
EXPLAIN ANALYZE SELECT * FROM products WHERE Price BETWEEN 100 AND 500; --PT: 1.951ms| ET:0.028ms
