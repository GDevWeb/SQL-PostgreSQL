### 📚 **Full Corrected Version of Your SQL Code** 📚

Here's the complete corrected version of your SQL script, with detailed comments and improvements.

---

### 📝 **1. Create the Database**

```sql
-- 1. Create the bookstore database
CREATE DATABASE bookstore;
```

---

### 🔄 **2. Switch and Configure the Database**

To switch to the newly created database (in PostgreSQL):

```sql
-- Connect to the bookstore database
\c bookstore
```

---

### 📝 **3. Create Tables**

#### 3.1. **Create ENUM for Book Genres**

```sql
-- 3.1.1 Create an ENUM type for book genres
CREATE TYPE type_genre_books AS ENUM (
  'Fiction',
  'Fantasy',
  'Science Fiction',
  'Mystery',
  'Non-Fiction',
  'Biography',
  'History',
  'Self-Help',
  'Default'
);
```

#### 3.2. **Create the `books` Table**

```sql
-- 3.1.2 Create the books table with appropriate constraints
CREATE TABLE IF NOT EXISTS books (
  BookID SERIAL PRIMARY KEY,
  Title VARCHAR(100) NOT NULL UNIQUE,
  Author VARCHAR(50) NOT NULL,
  Genre type_genre_books DEFAULT 'Default',
  Price DECIMAL(6,2) CHECK (Price > 0) NOT NULL,
  Stock INTEGER CHECK (Stock >= 0) DEFAULT 0
);
```

#### 3.3. **Create the `customers` Table**

```sql
-- 3.2 Create the customers table with appropriate constraints
CREATE TABLE IF NOT EXISTS customers (
  CustomerID SERIAL PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(65) UNIQUE NOT NULL,
  DateJoined DATE DEFAULT CURRENT_DATE
);
```

---

### 📝 **4. Insert Data**

#### 4.1. **Insert Data into `books`**

```sql
-- 4.1 Insert at least 5 books with a mix of genres and prices
INSERT INTO books (Title, Author, Genre, Price, Stock)
VALUES
  ('1984', 'George Orwell', 'Fiction', 29.99, 4),
  ('Pride and Prejudice', 'Jane Austen', 'Default', 19.99, 2),
  ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 24.99, 1),
  ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 29.99, 6),
  ('The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mystery', 14.99, 2)
ON CONFLICT (Title) DO NOTHING;
```

#### 4.2. **Insert Data into `customers`**

```sql
-- 4.2 Insert at least 3 customers with unique emails
INSERT INTO customers (FirstName, LastName, Email, DateJoined)
VALUES
  ('Emma', 'Clarkson', 'emma.clarkson@mail.com', '2022-05-15'),
  ('Nathan', 'Rivera', 'nathan.rivera@domain.com', '2023-08-22'),
  ('Sophia', 'Patel', 'sophia.patel@email.net', '2021-12-10')
ON CONFLICT (Email) DO NOTHING;
```

#### 4.3. **Insert Out-of-Stock Books**

```sql
-- 4.3 Insert books with Stock set to 0 to simulate out-of-stock books
INSERT INTO books (Title, Author, Genre, Price, Stock)
VALUES
  ('Hello Flutter', 'Google Team', 'Self-Help', 9.99, 0)
ON CONFLICT (Title) DO NOTHING;
```

---

### 🔍 **5. Write Queries**

#### 5.1. **Retrieve All Books**

```sql
-- 5.1 Retrieve all books with Title, Author, Genre, and Price
SELECT Title, Author, Genre, Price FROM books;
```

#### 5.2. **Filter by Genre**

```sql
-- 5.2 Select all books where the genre is 'Fiction' or 'Fantasy'
SELECT * FROM books
WHERE Genre IN ('Fiction', 'Fantasy');
```

#### 5.3. **List Out-of-Stock Books**

```sql
-- 5.3 List all books where the Stock is 0
SELECT * FROM books
WHERE Stock = 0;
```

#### 5.4. **Search by Author**

```sql
-- 5.4 Find books written by 'J.R.R. Tolkien'
SELECT * FROM books
WHERE Author = 'J.R.R. Tolkien';
```

#### 5.5. **Sort by Price (Descending)**

```sql
-- 5.5 Retrieve all books sorted by Price in descending order
SELECT * FROM books
ORDER BY Price DESC;
```

---

### 🛠️ **6. Constraints and Validation**

#### 6.1. **Add a `CHECK` Constraint for Price**

```sql
-- 6.1 Ensure that Price is always greater than 0
ALTER TABLE books
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);
```

#### 6.2. **Add a `CHECK` Constraint for Email Format**

```sql
-- 6.2 Ensure that the Email contains '@'
ALTER TABLE customers
ADD CONSTRAINT chk_email_format CHECK (Email LIKE '%@%');
```

---

### 🔄 **7. Updates and Deletions**

#### 7.1. **Update Stock for Fiction Books**

```sql
-- 7.1 Increase the Stock of all books in the 'Fiction' genre by 5
UPDATE books
SET Stock = Stock + 5
WHERE Genre = 'Fiction';

-- Verify the update
SELECT * FROM books WHERE Genre = 'Fiction';
```

#### 7.2. **Delete a Book**

```sql
-- 7.2 Delete the book 'Pride and Prejudice'
DELETE FROM books
WHERE Title = 'Pride and Prejudice';

-- Verify the deletion
SELECT * FROM books;
```

---

### 📊 **8. Reporting**

#### 8.1. **Create the `purchases` Table**

```sql
-- 8.1 Create the purchases table to track customer purchases
CREATE TABLE IF NOT EXISTS purchases (
  PurchaseID SERIAL PRIMARY KEY,
  CustomerID INT,
  BookID INT,
  PurchaseDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
  FOREIGN KEY (BookID) REFERENCES books(BookID)
);
```

#### 8.2. **Simulate Purchases**

```sql
-- Insert sample purchases
INSERT INTO purchases (CustomerID, BookID, PurchaseDate)
VALUES
  (1, 1, '2023-06-01'),
  (2, 2, '2023-09-15'),
  (1, 3, '2023-07-10');
```

#### 8.3. **Join Query to Display Customer Purchases**

```sql
-- Display each customer and the books they purchased
SELECT
  c.FirstName,
  c.LastName,
  c.Email,
  b.Title AS BookTitle,
  b.Author,
  b.Genre,
  b.Price,
  p.PurchaseDate
FROM
  purchases p
JOIN
  customers c ON p.CustomerID = c.CustomerID
JOIN
  books b ON p.BookID = b.BookID
ORDER BY
  c.CustomerID, p.PurchaseDate;
```

#### 8.4. **Count Books by Genre**

```sql
-- Count the number of books in each genre
SELECT
  Genre,
  COUNT(*) AS BookCount
FROM books
GROUP BY Genre
ORDER BY BookCount DESC;
```

---

### ✅ **Summary**

This corrected script includes:

1. **Table Creation** with constraints.
2. **Data Insertion** with conflict handling.
3. **Queries** for retrieving, filtering, and sorting data.
4. **Constraints** for data integrity.
5. **Updates and Deletions**.
6. **Reporting** with joins and aggregate functions.

---

You're doing an excellent job! Let me know if you need further clarification or additional exercises. 🚀😊
