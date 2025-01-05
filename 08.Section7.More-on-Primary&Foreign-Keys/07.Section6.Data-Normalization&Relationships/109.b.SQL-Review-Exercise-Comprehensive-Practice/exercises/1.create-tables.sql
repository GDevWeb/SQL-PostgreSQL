-- CREATE TYPE book_category as ENUM 
-- ('Fantastic', 'History', 'Sci-fi', 'Magic', 'Adventure', 'Thriller');

-- CREATE TABLE IF NOT EXISTS Members(
--   MemberID SERIAL primary KEY,
--   MemberName VARCHAR(100) NOT NULL,
--   JoinDate DATE DEFAULT CURRENT_DATE
--   );

--   CREATE TABLE IF NOT EXISTS Books(
--     BookID SERIAL PRIMARY KEY,
--     Title VARCHAR(100) NOT NULL,
--     Author VARCHAR(100) NOT NULL,
--     Category book_category NOT NULL, --enum
--     AvailableCopies INT NOT NULL 
--   );

--   CREATE TABLE IF NOT EXISTS BorrowingRecords(
--     RecordID SERIAL PRIMARY KEY,
--     MemberID INT NOT NULL, --foreign key 
--     BookID INT NOT NULL, --foreign key
--     BorrowDate DATE DEFAULT CURRENT_DATE, 
--     ReturnDate DATE,
--     FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
--     FOREIGN KEY (BookID) REFERENCES Books(BookID)
--   );

  -- SELECT * FROM members;
  SELECT * FROM books;
  -- SELECT * FROM borrowingrecords;

