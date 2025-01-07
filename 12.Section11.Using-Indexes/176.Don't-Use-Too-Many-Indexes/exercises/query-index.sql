--Run a query to filter products by category.
-- EXPLAIN SELECT * FROM products WHERE Category = 'Electronics';
--Create an index on the Category column.
-- CREATE INDEX idx_category ON products(Category);
--Re-run the same query and compare performance.
EXPLAIN SELECT * FROM products WHERE Category = 'Electronics';
--Simulate frequent updates to the Category column and observe the performance impact.
UPDATE products SET Category = 'Updated Category' WHERE ProductID <= 5;