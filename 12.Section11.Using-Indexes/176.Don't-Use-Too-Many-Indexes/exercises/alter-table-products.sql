ALTER TABLE products ADD COLUMN Category VARCHAR(50);
UPDATE products
SET Category = CASE
    WHEN ProductName IN ('Laptop', 'Smartphone', 'Tablet') THEN 'Electronics'
    WHEN ProductName IN ('Keyboard', 'Mouse', 'Printer') THEN 'Accessories'
    ELSE 'Others'
END;

