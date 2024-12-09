-- DROP TABLE products;

-- CREATE TABLE products (
--   ProductID SERIAL PRIMARY KEY,
--   ProductCode CHAR(5),
--   ProductName VARCHAR(100),
--   Description TEXT
-- );

-- INSERT INTO products (ProductCode, ProductName, Description)
-- VALUES ('P1234', 'Laptop', 'A high-performance laptop with 16GB RAM and 512GB SSD.')
-- ON CONFLICT (ProductID) DO NOTHING;

-- SELECT * FROM products;

/* **** Exercise **** */

-- Exercise 1: Create a Table with Text Types
CREATE Table IF NOT EXISTS books (
  ISBN CHAR(13) PRIMARY KEY,
  Title VARCHAR(200) NOT NULL,
  Summary TEXT
);

-- Add a column quantity :
-- ALTER TABLE books
-- ADD COLUMN quantity Int DEFAULT 1;

-- Exercise 2: Insert Data into the books Table
INSERT INTO books (ISBN, Title, Summary, Quantity)
VALUES ('9781234567897', 'Learn PostgreSQL', 'A comprehensive guide to mastering PostgreSQL for developers.', 1)
ON CONFLICT (ISBN) 
DO UPDATE SET Quantity = books.Quantity + 1;

SELECT * FROM books;