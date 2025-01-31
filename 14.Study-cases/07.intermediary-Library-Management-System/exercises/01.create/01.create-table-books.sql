CREATE TABLE IF NOT EXISTS Books(
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(250) NOT NULL,
  isbn VARCHAR(13) NOT NULL UNIQUE, --current standard 13digits - old 10 digits
  publication_year DATE NOT NULL  CHECK(publication_year <= CURRENT_DATE),
  copies_available INT NOT NULL CHECK(copies_available >= 0)
);

-- INSERT INTO Books(title, isbn, publication_year, copies_available)
-- VALUES('Harry Potter and the Philosopher s Stone', '9780747532699', '1997-06-26', 4);

SELECT * FROM Books;
