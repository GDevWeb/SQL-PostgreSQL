-- CREATE DATABASE online_shop;


CREATE TABLE IF NOT EXISTS products(
  ProductId SERIAL PRIMARY KEY UNIQUE,
  ProductName VARCHAR(50) NOT NULL,
  Description TEXT,
  Price DECIMAL(10,2) NOT NULL,
  Amount_In_Stock INT DEFAULT 0,
  Image VARCHAR(255)
);


-- INSERT INTO products (ProductName, Price, Description, Amount_In_Stock, Image)
-- VALUES
--     ('Laptop', 999.99, 'A high-performance laptop.', 10, 'laptop.png'),
--     ('Wireless Mouse', 25.99, 'A sleek wireless mouse.', 50, 'mouse.png'),
--     ('Headphones', 49.99, 'Noise-cancelling headphones.', 30, 'headphones.png'),
--     ('Smartphone', 699.99, 'Latest model smartphone.', 15, 'smartphone.png'),
--     ('Keyboard', 39.99, 'Mechanical keyboard.', 20, 'keyboard.png');

-- Drop existing constraint if it exists
ALTER TABLE products
DROP CONSTRAINT IF EXISTS unique_productname;

-- Change the data type of ProductName to VARCHAR(100)
ALTER TABLE products
ALTER COLUMN ProductName TYPE VARCHAR(100);

-- Set ProductName to NOT NULL
ALTER TABLE products
ALTER COLUMN ProductName SET NOT NULL;

-- Add UNIQUE constraint to ProductName
ALTER TABLE products
ADD CONSTRAINT unique_productname UNIQUE (ProductName);

-- Verify the table structure
SELECT * FROM products;
