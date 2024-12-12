-- 1.create DB
-- CREATE DATABASE bookstore;

-- 2.switch and configure DB 

-- 3. Create tables

-- 3.1.2.Create a ENUM for Genre :
-- CREATE TYPE type_genre_books AS ENUM (
--   'Fiction', 
--   'Fantasy', 
--   'Science Fiction', 
--   'Mystery', 
--   'Non-Fiction', 
--   'Biography', 
--   'History', 
--   'Self-Help',
--   'Default'
-- );


-- 3.1.1 books :
CREATE TABLE if NOT EXISTS books(
  BookID SERIAL PRIMARY KEY,
  Title VARCHAR(100) NOT NULL UNIQUE,
  Author VARCHAR(50) NOT NULL,
  Genre type_genre_books DEFAULT 'Default',
  Price DECIMAL(6,2)  CHECK (Price > 0) NOT NULL,
  Stock INTEGER CHECK (Stock > 0) DEFAULT 0
);


-- 2 :
CREATE TABLE IF NOT EXISTS customers(
  CustomerID SERIAL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(65) UNIQUE NOT NULL,
  DateJoined DATE DEFAULT CURRENT_DATE
);


-- 2.Insert DATA
-- 2.1Insert at least 5 books into the books table with a mix of genres and prices.
INSERT INTO books(Title, Author, Genre, Price, Stock)
VALUES 
('1984', 'George Orwell', 'Fiction', 29.99, 4),
('Pride and Prejudice', 'Jane Austen', 'Default', 19.99, 2),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 24.99, 1),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 29.99, 6),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mystery', 14.99, 2)
-- ('Hello flutter', 'Google Team', 'Self-Help', 9.99, 0)
ON CONFLICT (Title) DO NOTHING;


-- 2.2.Insert at least 3 customers into the customers table, ensuring each has a unique email.
INSERT INTO customers(FirstName, LastName, Email, DateJoined)
VALUES
('Emma', 'Clarkson', 'emma.clarkson@mail.com', '2022-05-15'),
('Nathan', 'Rivera', 'nathan.rivera@domain.com', '2023-08-22'),
('Sophia', 'Patel', 'sophia.patel@email.net', '2021-12-10')
ON CONFLICT (Email) DO NOTHING;

SELECT * FROM customers;

-- 2.3Insert one or two books with Stock set to 0 to simulate out-of-stock books.
-- INSERT INTO books(Title, Author, Genre, Price, Stock)
-- VALUES 
-- ('The Night Circus', ' Erin Morgenstern', 'Fiction', 29.99, -1),
-- ('The Silent Patient', 'Alex Michaelides', 'Mystery', 19.99, -2);

--  Step 3: Write Queries
-- 3.1 Basic Query:
-- Retrieve all books with their Title, Author, Genre, and Price.
-- SELECT * FROM books;

-- 3.2.Filter by Genre:
-- Select all books where the genre is 'Fiction' or 'Fantasy'.
-- SELECT * FROM books
-- WHERE genre = 'Fiction' OR genre = 'Fantasy';

-- or :
-- SELECT * FROM books
-- WHERE genre IN ('Fiction', 'Fantasy');

-- 3.3.Out-of-Stock Books:
-- List all books where the Stock is 0.
-- SELECT * FROM books
-- WHERE stock = 0;

-- 3.4.Search by Author:
-- Find books written by a specific author (you choose the name).
-- SELECT * FROM books
-- WHERE author = 'J.R.R. Tolkien';

-- 3.5.Sort by Price:
-- Retrieve all books sorted by Price in descending order.

-- SELECT * FROM books
-- ORDER BY price DESC;

-- Step 4: Constraints and Validation

-- 4.1.Step 4: Constraints and Validation
-- Add a CHECK constraint to ensure that the Price in the books table is always greater than 0.
-- ALTER TABLE books
-- ALTER COLUMN Price
-- ADD CONSTRAINT CHECK(Price > 0);

-- 4.2.Add a CHECK constraint to ensure that the Stock cannot be negative.
-- ALTER TABLE customers
-- ADD CONSTRAINT chk_email_format
-- CHECK (Email LIKE '%@%');

-- Step 5: Updates and Deletions
-- 5.1.Update Stock:
-- Increase the Stock of all books in the 'Fiction' genre by 5.
-- UPDATE books
-- SET stock = (stock + 5)
-- WHERE genre = 'Fiction';

-- SELECT * FROM books
-- WHERE genre = 'Fiction';

-- 5.2.Delete a Book:
DELETE From books
WHERE title = 'Pride and Prejudice';

SELECT * FROM books;

--  Step 6: Reporting
-- 6.1.1Create a query to display each customer and the books they have purchased (simulate this by imagining there's a purchases table).

CREATE TABLE IF NOT EXISTS purchases(
  PurchaseID SERIAL PRIMARY KEY,
  CustomerID INT,
  BookID INT,
  PurchaseDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
  FOREIGN KEY (BookID) REFERENCES books(BookID)
);

SELECT * FROM purchases;

-- INSERT INTO purchases (PurchaseID, CustomerID, BookID, PurchaseDate)
-- VALUES 
-- (1, 1, 101, '2023-06-01'),
-- (2, 2, 102, '2023-09-15'),
-- (3, 1, 103, '2023-07-10');

-- SELECT 
--     c.FirstName,
--     c.LastName,
--     c.Email,
--     b.Title AS BookTitle,
--     b.Author,
--     b.Genre,
--     b.Price,
--     p.PurchaseDate
-- FROM 
--     purchases p
-- JOIN 
--     customers c ON p.CustomerID = c.CustomerID
-- JOIN 
--     books b ON p.BookID = b.BookID
-- ORDER BY 
--     c.CustomerID, p.PurchaseDate;

-- 2.Count Query:
-- Count the number of books in each genre.


SELECT 
Genre,
COUNT(*) AS BookCount
From books
GROUP BY Genre
ORDER BY BookCount DESC;


