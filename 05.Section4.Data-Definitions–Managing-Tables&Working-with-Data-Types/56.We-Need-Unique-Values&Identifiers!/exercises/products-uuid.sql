-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CREATE TABLE IF NOT EXISTS products (
--     ProductID UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
--     ProductName VARCHAR(100) NOT NULL,
--     Price DECIMAL(10, 2) CHECK (Price > 0)
-- );

-- -- INSERT INTO products (ProductName, Price)
-- -- VALUES ('Wireless Mouse', 25.99);

-- SELECT * FROM products;

--❗
DROP TABLE products;