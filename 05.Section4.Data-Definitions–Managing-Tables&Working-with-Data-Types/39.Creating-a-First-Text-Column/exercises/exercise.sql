-- Exercise 1 - create Table :
CREATE TABLE IF NOT EXISTS customers (
  CustomerID SERIAL PRIMARY KEY, 
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE
);

-- Exercise 2 - insert values
INSERT INTO customers(FirstName,LastName,Email)
VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com')
ON CONFLICT (Email) DO NOTHING;

-- Retrieving all customers :
SELECT * FROM customers;

-- DROP TABLE customers;