-- CREATE TYPE type_category AS ENUM('Electronics', 'Computer','Computer components', 'Laptop', 'Tablet', 'Mobile', 'Mouse', 'Keyboard', 'Monitor');

CREATE TABLE IF NOT EXISTS Products(
ProductID SERIAL PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
Category type_category DEFAULT('Electronics') NOT NULL,
Quantity INT CHECK (Quantity >= 0) NOT NULL,
Price DECIMAL(10,2) CHECK(Price >=1.99)NOT NULL,
Stock BOOLEAN GENERATED ALWAYS AS (Quantity > 0) STORED,
CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM Products;


